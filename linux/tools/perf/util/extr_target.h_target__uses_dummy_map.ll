; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_target.h_target__uses_dummy_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_target.h_target__uses_dummy_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target*)* @target__uses_dummy_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target__uses_dummy_map(%struct.target* %0) #0 {
  %2 = alloca %struct.target*, align 8
  %3 = alloca i32, align 4
  store %struct.target* %0, %struct.target** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.target*, %struct.target** %2, align 8
  %5 = getelementptr inbounds %struct.target, %struct.target* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.target*, %struct.target** %2, align 8
  %10 = getelementptr inbounds %struct.target, %struct.target* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.target*, %struct.target** %2, align 8
  %17 = call i64 @target__has_task(%struct.target* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load %struct.target*, %struct.target** %2, align 8
  %21 = call i32 @target__has_cpu(%struct.target* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.target*, %struct.target** %2, align 8
  %25 = getelementptr inbounds %struct.target, %struct.target* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %15
  store i32 1, i32* %3, align 4
  br label %35

29:                                               ; preds = %23, %19
  %30 = load %struct.target*, %struct.target** %2, align 8
  %31 = call i64 @target__has_per_thread(%struct.target* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @target__has_task(%struct.target*) #1

declare dso_local i32 @target__has_cpu(%struct.target*) #1

declare dso_local i64 @target__has_per_thread(%struct.target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
