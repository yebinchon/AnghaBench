; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tc_u_knode = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_hnode = type { i32, i64 }

@TCA_U32_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"u32 Link handle must be a hash table\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Link hash table not found\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Not linking to root node\00", align 1
@TCA_U32_CLASSID = common dso_local global i64 0, align 8
@TCA_U32_INDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, i64, %struct.tc_u_knode*, %struct.nlattr**, %struct.nlattr*, i32, %struct.netlink_ext_ack*)* @u32_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_set_parms(%struct.net* %0, %struct.tcf_proto* %1, i64 %2, %struct.tc_u_knode* %3, %struct.nlattr** %4, %struct.nlattr* %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tc_u_knode*, align 8
  %14 = alloca %struct.nlattr**, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.tc_u_hnode*, align 8
  %21 = alloca %struct.tc_u_hnode*, align 8
  %22 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.tc_u_knode* %3, %struct.tc_u_knode** %13, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %14, align 8
  store %struct.nlattr* %5, %struct.nlattr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %23 = load %struct.net*, %struct.net** %10, align 8
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %27 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %28 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %27, i32 0, i32 3
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %31 = call i32 @tcf_exts_validate(%struct.net* %23, %struct.tcf_proto* %24, %struct.nlattr** %25, %struct.nlattr* %26, i32* %28, i32 %29, i32 1, %struct.netlink_ext_ack* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %9, align 4
  br label %149

36:                                               ; preds = %8
  %37 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %38 = load i64, i64* @TCA_U32_LINK, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %44 = load i64, i64* @TCA_U32_LINK, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i8* @nla_get_u32(%struct.nlattr* %46)
  store i8* %47, i8** %19, align 8
  store %struct.tc_u_hnode* null, %struct.tc_u_hnode** %20, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = call i64 @TC_U32_KEY(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %53 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %149

56:                                               ; preds = %42
  %57 = load i8*, i8** %19, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %61 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %19, align 8
  %64 = call %struct.tc_u_hnode* @u32_lookup_ht(i32 %62, i8* %63)
  store %struct.tc_u_hnode* %64, %struct.tc_u_hnode** %20, align 8
  %65 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %20, align 8
  %66 = icmp ne %struct.tc_u_hnode* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %69 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %149

72:                                               ; preds = %59
  %73 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %20, align 8
  %74 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %79 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %149

82:                                               ; preds = %72
  %83 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %20, align 8
  %84 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %82, %56
  %88 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %89 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.tc_u_hnode* @rtnl_dereference(i32 %90)
  store %struct.tc_u_hnode* %91, %struct.tc_u_hnode** %21, align 8
  %92 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %93 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %20, align 8
  %96 = call i32 @rcu_assign_pointer(i32 %94, %struct.tc_u_hnode* %95)
  %97 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %21, align 8
  %98 = icmp ne %struct.tc_u_hnode* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %21, align 8
  %101 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %87
  br label %105

105:                                              ; preds = %104, %36
  %106 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %107 = load i64, i64* @TCA_U32_CLASSID, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %113 = load i64, i64* @TCA_U32_CLASSID, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %112, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = call i8* @nla_get_u32(%struct.nlattr* %115)
  %117 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %118 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  %120 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %121 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %122 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %121, i32 0, i32 1
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @tcf_bind_filter(%struct.tcf_proto* %120, %struct.TYPE_2__* %122, i64 %123)
  br label %125

125:                                              ; preds = %111, %105
  %126 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %127 = load i64, i64* @TCA_U32_INDEV, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load %struct.net*, %struct.net** %10, align 8
  %133 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %134 = load i64, i64* @TCA_U32_INDEV, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %133, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %138 = call i32 @tcf_change_indev(%struct.net* %132, %struct.nlattr* %136, %struct.netlink_ext_ack* %137)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %9, align 4
  br label %149

144:                                              ; preds = %131
  %145 = load i32, i32* %22, align 4
  %146 = load %struct.tc_u_knode*, %struct.tc_u_knode** %13, align 8
  %147 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %125
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %148, %141, %77, %67, %51, %34
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @TC_U32_KEY(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tc_u_hnode* @u32_lookup_ht(i32, i8*) #1

declare dso_local %struct.tc_u_hnode* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tc_u_hnode*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_change_indev(%struct.net*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
