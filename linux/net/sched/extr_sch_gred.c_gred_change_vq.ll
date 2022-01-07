; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_change_vq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_change_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64 }
%struct.tc_gred_qopt = type { i64, i32, i32, i32, i32, i32 }
%struct.gred_sched_data = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.gred_sched = type { i32, %struct.gred_sched_data** }

@.str = private unnamed_addr constant [23 x i8] c"invalid RED parameters\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GRED_VQ_RED_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, %struct.tc_gred_qopt*, i32, i32*, i32, %struct.gred_sched_data**, %struct.netlink_ext_ack*)* @gred_change_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_change_vq(%struct.Qdisc* %0, i32 %1, %struct.tc_gred_qopt* %2, i32 %3, i32* %4, i32 %5, %struct.gred_sched_data** %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tc_gred_qopt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gred_sched_data**, align 8
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca %struct.gred_sched*, align 8
  %19 = alloca %struct.gred_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.tc_gred_qopt* %2, %struct.tc_gred_qopt** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.gred_sched_data** %6, %struct.gred_sched_data*** %16, align 8
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %20 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %21 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %20)
  store %struct.gred_sched* %21, %struct.gred_sched** %18, align 8
  %22 = load %struct.gred_sched*, %struct.gred_sched** %18, align 8
  %23 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %22, i32 0, i32 1
  %24 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %24, i64 %26
  %28 = load %struct.gred_sched_data*, %struct.gred_sched_data** %27, align 8
  store %struct.gred_sched_data* %28, %struct.gred_sched_data** %19, align 8
  %29 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %30 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %33 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %36 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @red_check_params(i32 %31, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %8
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %130

45:                                               ; preds = %8
  %46 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %47 = icmp ne %struct.gred_sched_data* %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %45
  %49 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %16, align 8
  %50 = load %struct.gred_sched_data*, %struct.gred_sched_data** %49, align 8
  store %struct.gred_sched_data* %50, %struct.gred_sched_data** %19, align 8
  %51 = load %struct.gred_sched*, %struct.gred_sched** %18, align 8
  %52 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %51, i32 0, i32 1
  %53 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %53, i64 %55
  store %struct.gred_sched_data* %50, %struct.gred_sched_data** %56, align 8
  %57 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %16, align 8
  store %struct.gred_sched_data* null, %struct.gred_sched_data** %57, align 8
  %58 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %59 = icmp ne %struct.gred_sched_data* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %130

63:                                               ; preds = %48
  %64 = load %struct.gred_sched*, %struct.gred_sched** %18, align 8
  %65 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GRED_VQ_RED_FLAGS, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %70 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %45
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %74 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %77 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %79 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %87 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %90 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  br label %97

91:                                               ; preds = %71
  %92 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %93 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %96 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %99 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %104 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %103, i32 0, i32 5
  %105 = call i32 @red_end_of_idle_period(i32* %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %108 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %107, i32 0, i32 6
  %109 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %110 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %113 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %116 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %119 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %12, align 8
  %122 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @red_set_parms(i32* %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32* %124, i32 %125)
  %127 = load %struct.gred_sched_data*, %struct.gred_sched_data** %19, align 8
  %128 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %127, i32 0, i32 5
  %129 = call i32 @red_set_vars(i32* %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %106, %60, %40
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_check_params(i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @red_end_of_idle_period(i32*) #1

declare dso_local i32 @red_set_parms(i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @red_set_vars(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
