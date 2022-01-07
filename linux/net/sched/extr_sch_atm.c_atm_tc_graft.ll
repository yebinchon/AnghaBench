; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.atm_qdisc_data = type { i32 }
%struct.atm_flow_data = type { %struct.Qdisc*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"atm_tc_graft(sch %p,[qdisc %p],flow %p,new %p,old %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @atm_tc_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.atm_qdisc_data*, align 8
  %13 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %9, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.atm_qdisc_data* %15, %struct.atm_qdisc_data** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %17, %struct.atm_flow_data** %13, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %19 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %12, align 8
  %20 = load %struct.atm_flow_data*, %struct.atm_flow_data** %13, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %22 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %18, %struct.atm_qdisc_data* %19, %struct.atm_flow_data* %20, %struct.Qdisc* %21, %struct.Qdisc** %22)
  %24 = load %struct.atm_flow_data*, %struct.atm_flow_data** %13, align 8
  %25 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %24, i32 0, i32 1
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %51

31:                                               ; preds = %5
  %32 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %33 = icmp ne %struct.Qdisc* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %9, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.atm_flow_data*, %struct.atm_flow_data** %13, align 8
  %37 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %36, i32 0, i32 0
  %38 = load %struct.Qdisc*, %struct.Qdisc** %37, align 8
  %39 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  store %struct.Qdisc* %38, %struct.Qdisc** %39, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %41 = load %struct.atm_flow_data*, %struct.atm_flow_data** %13, align 8
  %42 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %41, i32 0, i32 0
  store %struct.Qdisc* %40, %struct.Qdisc** %42, align 8
  %43 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %44 = load %struct.Qdisc*, %struct.Qdisc** %43, align 8
  %45 = icmp ne %struct.Qdisc* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %47, align 8
  %49 = call i32 @qdisc_reset(%struct.Qdisc* %48)
  br label %50

50:                                               ; preds = %46, %35
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*, %struct.Qdisc*, %struct.Qdisc**) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
