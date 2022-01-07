; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_mpls_iptunnel.c_mpls_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mpls_iptunnel_encap = type { i64, i32, i32*, i32 }

@MPLS_IPTUNNEL_MAX = common dso_local global i32 0, align 4
@mpls_iptunnel_policy = common dso_local global i32 0, align 4
@MPLS_IPTUNNEL_DST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"MPLS_IPTUNNEL_DST attribute is missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_NEW_LABELS = common dso_local global i32 0, align 4
@label = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_DEFAULT = common dso_local global i32 0, align 4
@MPLS_IPTUNNEL_TTL = common dso_local global i64 0, align 8
@MPLS_TTL_PROP_DISABLED = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_ENABLED = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_MPLS = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_XMIT_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* @mpls_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_build_state(%struct.nlattr* %0, i32 %1, i8* %2, %struct.lwtunnel_state** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lwtunnel_state**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mpls_iptunnel_encap*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.lwtunnel_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.lwtunnel_state** %3, %struct.lwtunnel_state*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load i32, i32* @MPLS_IPTUNNEL_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @MPLS_IPTUNNEL_MAX, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = load i32, i32* @mpls_iptunnel_policy, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %24, %struct.nlattr* %25, i32 %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

33:                                               ; preds = %5
  %34 = load i64, i64* @MPLS_IPTUNNEL_DST, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

43:                                               ; preds = %33
  %44 = load i64, i64* @MPLS_IPTUNNEL_DST, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = load i32, i32* @MAX_NEW_LABELS, align 4
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %49 = call i32 @nla_get_labels(%struct.nlattr* %46, i32 %47, i32* %16, i32* null, %struct.netlink_ext_ack* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

54:                                               ; preds = %43
  %55 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %56 = load i32, i32* @label, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @struct_size(%struct.mpls_iptunnel_encap* %55, i32 %56, i32 %57)
  %59 = call %struct.lwtunnel_state* @lwtunnel_state_alloc(i32 %58)
  store %struct.lwtunnel_state* %59, %struct.lwtunnel_state** %15, align 8
  %60 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %61 = icmp ne %struct.lwtunnel_state* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

65:                                               ; preds = %54
  %66 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %67 = call %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state* %66)
  store %struct.mpls_iptunnel_encap* %67, %struct.mpls_iptunnel_encap** %12, align 8
  %68 = load i64, i64* @MPLS_IPTUNNEL_DST, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %73 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %72, i32 0, i32 3
  %74 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %75 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %78 = call i32 @nla_get_labels(%struct.nlattr* %70, i32 %71, i32* %73, i32* %76, %struct.netlink_ext_ack* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %124

82:                                               ; preds = %65
  %83 = load i32, i32* @MPLS_TTL_PROP_DEFAULT, align 4
  %84 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %85 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* @MPLS_IPTUNNEL_TTL, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %82
  %91 = load i64, i64* @MPLS_IPTUNNEL_TTL, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i64 @nla_get_u8(%struct.nlattr* %93)
  %95 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %96 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %98 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* @MPLS_TTL_PROP_DISABLED, align 4
  br label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @MPLS_TTL_PROP_ENABLED, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %108 = getelementptr inbounds %struct.mpls_iptunnel_encap, %struct.mpls_iptunnel_encap* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %82
  %110 = load i32, i32* @LWTUNNEL_ENCAP_MPLS, align 4
  %111 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %112 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @LWTUNNEL_STATE_XMIT_REDIRECT, align 4
  %114 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %115 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.mpls_iptunnel_encap*, %struct.mpls_iptunnel_encap** %12, align 8
  %119 = call i32 @mpls_encap_size(%struct.mpls_iptunnel_encap* %118)
  %120 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %121 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %123 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* %122, %struct.lwtunnel_state** %123, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

124:                                              ; preds = %81
  %125 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %15, align 8
  %126 = call i32 @kfree(%struct.lwtunnel_state* %125)
  %127 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* null, %struct.lwtunnel_state** %127, align 8
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %129

129:                                              ; preds = %124, %109, %62, %51, %38, %31
  %130 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @nla_get_labels(%struct.nlattr*, i32, i32*, i32*, %struct.netlink_ext_ack*) #2

declare dso_local %struct.lwtunnel_state* @lwtunnel_state_alloc(i32) #2

declare dso_local i32 @struct_size(%struct.mpls_iptunnel_encap*, i32, i32) #2

declare dso_local %struct.mpls_iptunnel_encap* @mpls_lwtunnel_encap(%struct.lwtunnel_state*) #2

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @mpls_encap_size(%struct.mpls_iptunnel_encap*) #2

declare dso_local i32 @kfree(%struct.lwtunnel_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
