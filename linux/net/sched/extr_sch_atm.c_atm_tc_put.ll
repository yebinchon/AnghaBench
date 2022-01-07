; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data }
%struct.atm_flow_data = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"atm_tc_put(sch %p,[qdisc %p],flow %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"atm_tc_put: destroying\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"atm_tc_put: qdisc %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"atm_tc_put: f_count %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, i64)* @atm_tc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_tc_put(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.atm_qdisc_data*, align 8
  %6 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.atm_qdisc_data* %8, %struct.atm_qdisc_data** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %10, %struct.atm_flow_data** %6, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %13 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %14 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %11, %struct.atm_qdisc_data* %12, %struct.atm_flow_data* %13)
  %15 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %16 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %79

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %24 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %23, i32 0, i32 6
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %27 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %31 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qdisc_put(i32 %32)
  %34 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %35 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tcf_block_put(i32 %36)
  %38 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %39 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %21
  %43 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %44 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @file_count(i32 %47)
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %51 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %54 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %58 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @sockfd_put(%struct.TYPE_4__* %59)
  br label %61

61:                                               ; preds = %42, %21
  %62 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %63 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %68 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %69 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  call void @atm_tc_put(%struct.Qdisc* %67, i64 %70)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %73 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %74 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %73, i32 0, i32 0
  %75 = icmp ne %struct.atm_flow_data* %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.atm_flow_data*, %struct.atm_flow_data** %6, align 8
  %78 = call i32 @kfree(%struct.atm_flow_data* %77)
  br label %79

79:                                               ; preds = %20, %76, %71
  ret void
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @qdisc_put(i32) #1

declare dso_local i32 @tcf_block_put(i32) #1

declare dso_local i32 @file_count(i32) #1

declare dso_local i32 @sockfd_put(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.atm_flow_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
