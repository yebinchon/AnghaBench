; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c___fprop_inc_percpu_max.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c___fprop_inc_percpu_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32 }
%struct.fprop_local_percpu = type { i32 }

@FPROP_FRAC_BASE = common dso_local global i32 0, align 4
@FPROP_FRAC_SHIFT = common dso_local global i32 0, align 4
@PROP_BATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fprop_inc_percpu_max(%struct.fprop_global* %0, %struct.fprop_local_percpu* %1, i32 %2) #0 {
  %4 = alloca %struct.fprop_global*, align 8
  %5 = alloca %struct.fprop_local_percpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fprop_global* %0, %struct.fprop_global** %4, align 8
  store %struct.fprop_local_percpu* %1, %struct.fprop_local_percpu** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @FPROP_FRAC_BASE, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %17 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %5, align 8
  %18 = call i32 @fprop_fraction_percpu(%struct.fprop_global* %16, %struct.fprop_local_percpu* %17, i64* %7, i64* %8)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @FPROP_FRAC_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %42

29:                                               ; preds = %15
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %32 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %5, align 8
  %33 = call i32 @fprop_reflect_period_percpu(%struct.fprop_global* %31, %struct.fprop_local_percpu* %32)
  br label %34

34:                                               ; preds = %30, %29
  %35 = load %struct.fprop_local_percpu*, %struct.fprop_local_percpu** %5, align 8
  %36 = getelementptr inbounds %struct.fprop_local_percpu, %struct.fprop_local_percpu* %35, i32 0, i32 0
  %37 = load i32, i32* @PROP_BATCH, align 4
  %38 = call i32 @percpu_counter_add_batch(i32* %36, i32 1, i32 %37)
  %39 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %40 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %39, i32 0, i32 0
  %41 = call i32 @percpu_counter_add(i32* %40, i32 1)
  br label %42

42:                                               ; preds = %34, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fprop_fraction_percpu(%struct.fprop_global*, %struct.fprop_local_percpu*, i64*, i64*) #1

declare dso_local i32 @fprop_reflect_period_percpu(%struct.fprop_global*, %struct.fprop_local_percpu*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i32, i32) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
