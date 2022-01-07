; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_fraction_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_fraction_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32, i32 }
%struct.fprop_local_percpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fprop_fraction_percpu(%struct.fprop_global* %0, %struct.fprop_local_percpu* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.fprop_global*, align 8
  %6 = alloca %struct.fprop_local_percpu*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fprop_global* %0, %struct.fprop_global** %5, align 8
  store %struct.fprop_local_percpu* %1, %struct.fprop_local_percpu** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  br label %12

12:                                               ; preds = %25, %4
  %13 = load %struct.fprop_global*, %struct.fprop_global** %5, align 8
  %14 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %13, i32 0, i32 1
  %15 = call i32 @read_seqcount_begin(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.fprop_global*, %struct.fprop_global** %5, align 8
  %17 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %6, align 8
  %18 = call i32 @fprop_reflect_period_percpu(%struct.fprop_global* %16, %struct.fprop_local_percpu* %17)
  %19 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %6, align 8
  %20 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %19, i32 0, i32 0
  %21 = call i64 @percpu_counter_read_positive(i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.fprop_global*, %struct.fprop_global** %5, align 8
  %23 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %22, i32 0, i32 0
  %24 = call i64 @percpu_counter_read_positive(i32* %23)
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load %struct.fprop_global*, %struct.fprop_global** %5, align 8
  %27 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %26, i32 0, i32 1
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @read_seqcount_retry(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %12, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  br label %41

40:                                               ; preds = %35
  store i64 1, i64* %11, align 8
  br label %41

41:                                               ; preds = %40, %38
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  ret void
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @fprop_reflect_period_percpu(%struct.fprop_global*, %struct.fprop_local_percpu*) #1

declare dso_local i64 @percpu_counter_read_positive(i32*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
