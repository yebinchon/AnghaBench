; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_algos.c_raid6_choose_recov.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_algos.c_raid6_choose_recov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid6_recov_calls = type { i64, i32, i32, i32, i64 (...)* }

@raid6_recov_algos = common dso_local global %struct.raid6_recov_calls** null, align 8
@raid6_2data_recov = common dso_local global i32 0, align 4
@raid6_datap_recov = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"raid6: using %s recovery algorithm\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"raid6: Yikes! No recovery algorithm found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid6_recov_calls* ()* @raid6_choose_recov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid6_recov_calls* @raid6_choose_recov() #0 {
  %1 = alloca %struct.raid6_recov_calls**, align 8
  %2 = alloca %struct.raid6_recov_calls*, align 8
  store %struct.raid6_recov_calls* null, %struct.raid6_recov_calls** %2, align 8
  %3 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** @raid6_recov_algos, align 8
  store %struct.raid6_recov_calls** %3, %struct.raid6_recov_calls*** %1, align 8
  br label %4

4:                                                ; preds = %38, %0
  %5 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %6 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %5, align 8
  %7 = icmp ne %struct.raid6_recov_calls* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %10 = icmp ne %struct.raid6_recov_calls* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %13 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %12, align 8
  %14 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %17 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %11, %8
  %21 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %22 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %21, align 8
  %23 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %22, i32 0, i32 4
  %24 = load i64 (...)*, i64 (...)** %23, align 8
  %25 = icmp ne i64 (...)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %28 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %27, align 8
  %29 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %28, i32 0, i32 4
  %30 = load i64 (...)*, i64 (...)** %29, align 8
  %31 = call i64 (...) %30()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %20
  %34 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %35 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %34, align 8
  store %struct.raid6_recov_calls* %35, %struct.raid6_recov_calls** %2, align 8
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %11
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %1, align 8
  %40 = getelementptr inbounds %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %39, i32 1
  store %struct.raid6_recov_calls** %40, %struct.raid6_recov_calls*** %1, align 8
  br label %4

41:                                               ; preds = %4
  %42 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %43 = icmp ne %struct.raid6_recov_calls* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %46 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* @raid6_2data_recov, align 4
  %48 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %49 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* @raid6_datap_recov, align 4
  %51 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  %52 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %57

55:                                               ; preds = %41
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %2, align 8
  ret %struct.raid6_recov_calls* %58
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
