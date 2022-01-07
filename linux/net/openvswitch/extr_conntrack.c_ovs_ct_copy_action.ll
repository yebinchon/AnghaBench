; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_copy_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_copy_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.ovs_conntrack_info = type { %struct.TYPE_7__*, i32, i64*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"ct family unspecified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_ID = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_DIR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate conntrack template\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to associated timeout policy `%s'\0A\00", align 1
@OVS_ACTION_ATTR_CT = common dso_local global i32 0, align 4
@IPS_CONFIRMED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_ct_copy_action(%struct.net* %0, %struct.nlattr* %1, %struct.sw_flow_key* %2, %struct.sw_flow_actions** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.sw_flow_key*, align 8
  %10 = alloca %struct.sw_flow_actions**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ovs_conntrack_info, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %9, align 8
  store %struct.sw_flow_actions** %3, %struct.sw_flow_actions*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %16 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %17 = call i64 @key_to_nfproto(%struct.sw_flow_key* %16)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @OVS_NLERR(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %120

26:                                               ; preds = %5
  %27 = call i32 @memset(%struct.ovs_conntrack_info* %12, i32 0, i32 40)
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 4
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 3
  %31 = load i32, i32* @NF_CT_DEFAULT_ZONE_ID, align 4
  %32 = load i32, i32* @NF_CT_DEFAULT_ZONE_DIR, align 4
  %33 = call i32 @nf_ct_zone_init(i32* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @parse_ct(%struct.nlattr* %34, %struct.ovs_conntrack_info* %12, i8** %13, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %120

41:                                               ; preds = %26
  %42 = load %struct.net*, %struct.net** %7, align 8
  %43 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 3
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.TYPE_7__* @nf_ct_tmpl_alloc(%struct.net* %42, i32* %43, i32 %44)
  %46 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %46, align 8
  %47 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @OVS_NLERR(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %120

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.net*, %struct.net** %7, align 8
  %63 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %67 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = call i64 @nf_ct_set_timeout(%struct.net* %62, %struct.TYPE_7__* %64, i64 %65, i32 %69, i64* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64* %76)
  br label %86

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call %struct.TYPE_8__* @nf_ct_timeout_find(%struct.TYPE_7__* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rcu_dereference(i32 %83)
  %85 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %74
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ovs_ct_add_helper(%struct.ovs_conntrack_info* %12, i8* %91, %struct.sw_flow_key* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %117

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %10, align 8
  %101 = load i32, i32* @OVS_ACTION_ATTR_CT, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ovs_nla_add_action(%struct.sw_flow_actions** %100, i32 %101, %struct.ovs_conntrack_info* %12, i32 40, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %117

107:                                              ; preds = %99
  %108 = load i32, i32* @IPS_CONFIRMED_BIT, align 4
  %109 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = call i32 @__set_bit(i32 %108, i32* %111)
  %113 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %12, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = call i32 @nf_conntrack_get(i32* %115)
  store i32 0, i32* %6, align 4
  br label %120

117:                                              ; preds = %106, %97
  %118 = call i32 @__ovs_ct_free_action(%struct.ovs_conntrack_info* %12)
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %107, %50, %39, %21
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @key_to_nfproto(%struct.sw_flow_key*) #1

declare dso_local i32 @OVS_NLERR(i32, i8*) #1

declare dso_local i32 @memset(%struct.ovs_conntrack_info*, i32, i32) #1

declare dso_local i32 @nf_ct_zone_init(i32*, i32, i32, i32) #1

declare dso_local i32 @parse_ct(%struct.nlattr*, %struct.ovs_conntrack_info*, i8**, i32) #1

declare dso_local %struct.TYPE_7__* @nf_ct_tmpl_alloc(%struct.net*, i32*, i32) #1

declare dso_local i64 @nf_ct_set_timeout(%struct.net*, %struct.TYPE_7__*, i64, i32, i64*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i64*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_8__* @nf_ct_timeout_find(%struct.TYPE_7__*) #1

declare dso_local i32 @ovs_ct_add_helper(%struct.ovs_conntrack_info*, i8*, %struct.sw_flow_key*, i32) #1

declare dso_local i32 @ovs_nla_add_action(%struct.sw_flow_actions**, i32, %struct.ovs_conntrack_info*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local i32 @__ovs_ct_free_action(%struct.ovs_conntrack_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
