; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data }
%struct.atm_flow_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"atm_tc_delete(sch %p,[qdisc %p],flow %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"atm_tc_delete: flow->ref == %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @atm_tc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atm_qdisc_data*, align 8
  %7 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.atm_qdisc_data* %9, %struct.atm_qdisc_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %11, %struct.atm_flow_data** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %6, align 8
  %14 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %12, %struct.atm_qdisc_data* %13, %struct.atm_flow_data* %14)
  %16 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %17 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %16, i32 0, i32 2
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %25 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @rcu_access_pointer(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %31 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %6, align 8
  %32 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %31, i32 0, i32 0
  %33 = icmp eq %struct.atm_flow_data* %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %39 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %44 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.atm_flow_data*, %struct.atm_flow_data** %7, align 8
  %51 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @atm_tc_put(%struct.Qdisc* %58, i64 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %54, %42, %34, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @atm_tc_put(%struct.Qdisc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
