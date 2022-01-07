; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_work_fn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_work_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.vmpressure = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @vmpressure_work_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmpressure_work_fn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.vmpressure*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %10 = call %struct.vmpressure* @work_to_vmpressure(%struct.work_struct* %9)
  store %struct.vmpressure* %10, %struct.vmpressure** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %12 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %15 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %21 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock(i32* %21)
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %25 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %28 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %30 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %32 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @vmpressure_calc_level(i64 %34, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %46, %23
  %38 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @vmpressure_event(%struct.vmpressure* %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %37
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %48 = call %struct.vmpressure* @vmpressure_parent(%struct.vmpressure* %47)
  store %struct.vmpressure* %48, %struct.vmpressure** %3, align 8
  %49 = icmp ne %struct.vmpressure* %48, null
  br i1 %49, label %37, label %50

50:                                               ; preds = %19, %46
  ret void
}

declare dso_local %struct.vmpressure* @work_to_vmpressure(%struct.work_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmpressure_calc_level(i64, i64) #1

declare dso_local i64 @vmpressure_event(%struct.vmpressure*, i32, i32, i32) #1

declare dso_local %struct.vmpressure* @vmpressure_parent(%struct.vmpressure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
