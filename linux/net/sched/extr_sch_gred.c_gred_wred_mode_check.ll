; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_wred_mode_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_wred_mode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gred_sched = type { i32, %struct.gred_sched_data** }
%struct.gred_sched_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @gred_wred_mode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_wred_mode_check(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gred_sched*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gred_sched_data*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.gred_sched* %9, %struct.gred_sched** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %65, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %13 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  %17 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %18 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %17, i32 0, i32 1
  %19 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %19, i64 %21
  %23 = load %struct.gred_sched_data*, %struct.gred_sched_data** %22, align 8
  store %struct.gred_sched_data* %23, %struct.gred_sched_data** %6, align 8
  %24 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %25 = icmp eq %struct.gred_sched_data* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %65

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %33 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %38 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %37, i32 0, i32 1
  %39 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %39, i64 %41
  %43 = load %struct.gred_sched_data*, %struct.gred_sched_data** %42, align 8
  %44 = icmp ne %struct.gred_sched_data* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %47 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %46, i32 0, i32 1
  %48 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %48, i64 %50
  %52 = load %struct.gred_sched_data*, %struct.gred_sched_data** %51, align 8
  %53 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %56 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %69

60:                                               ; preds = %45, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %30

64:                                               ; preds = %30
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %10

68:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
