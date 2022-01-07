; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.qdisc_size_table = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Change operation not supported by specified qdisc\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_INGRESS_BLOCK = common dso_local global i64 0, align 8
@TCA_EGRESS_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Change of blocks is not supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_STAB = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr**, %struct.netlink_ext_ack*)* @qdisc_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_change(%struct.Qdisc* %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.qdisc_size_table*, align 8
  %9 = alloca %struct.qdisc_size_table*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store %struct.qdisc_size_table* null, %struct.qdisc_size_table** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %12 = load i64, i64* @TCA_OPTIONS, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)** %20, align 8
  %22 = icmp ne i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %125

28:                                               ; preds = %16
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @TCA_INGRESS_BLOCK, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %36 = load i64, i64* @TCA_EGRESS_BLOCK, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %28
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %42 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %125

45:                                               ; preds = %34
  %46 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)** %49, align 8
  %51 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %52 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %53 = load i64, i64* @TCA_OPTIONS, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %57 = call i32 %50(%struct.Qdisc* %51, %struct.nlattr* %55, %struct.netlink_ext_ack* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %125

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %65 = load i64, i64* @TCA_STAB, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %71 = load i64, i64* @TCA_STAB, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %75 = call %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr* %73, %struct.netlink_ext_ack* %74)
  store %struct.qdisc_size_table* %75, %struct.qdisc_size_table** %9, align 8
  %76 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %9, align 8
  %77 = call i64 @IS_ERR(%struct.qdisc_size_table* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %9, align 8
  %81 = call i32 @PTR_ERR(%struct.qdisc_size_table* %80)
  store i32 %81, i32* %4, align 4
  br label %125

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %85 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.qdisc_size_table* @rtnl_dereference(i32 %86)
  store %struct.qdisc_size_table* %87, %struct.qdisc_size_table** %8, align 8
  %88 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %89 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %9, align 8
  %92 = call i32 @rcu_assign_pointer(i32 %90, %struct.qdisc_size_table* %91)
  %93 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %8, align 8
  %94 = call i32 @qdisc_put_stab(%struct.qdisc_size_table* %93)
  %95 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %96 = load i64, i64* @TCA_RATE, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = icmp ne %struct.nlattr* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %83
  %101 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %102 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TCQ_F_MQROOT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %124

108:                                              ; preds = %100
  %109 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %110 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %109, i32 0, i32 3
  %111 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %112 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %115 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %114, i32 0, i32 1
  %116 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %117 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %116)
  %118 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %119 = load i64, i64* @TCA_RATE, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i32 @gen_replace_estimator(i32* %110, i32 %113, i32* %115, i32* null, i32 %117, %struct.nlattr* %121)
  br label %123

123:                                              ; preds = %108, %83
  br label %124

124:                                              ; preds = %123, %107
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %79, %60, %40, %23
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.qdisc_size_table*) #1

declare dso_local i32 @PTR_ERR(%struct.qdisc_size_table*) #1

declare dso_local %struct.qdisc_size_table* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.qdisc_size_table*) #1

declare dso_local i32 @qdisc_put_stab(%struct.qdisc_size_table*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32, i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
