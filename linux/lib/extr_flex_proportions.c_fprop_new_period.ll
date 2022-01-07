; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_new_period.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c_fprop_new_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fprop_new_period(%struct.fprop_global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fprop_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fprop_global* %0, %struct.fprop_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %11 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %10, i32 0, i32 2
  %12 = call i32 @percpu_counter_sum(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @local_irq_restore(i64 %16)
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %20 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %19, i32 0, i32 1
  %21 = call i32 @write_seqcount_begin(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %32 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %31, i32 0, i32 2
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @percpu_counter_add(i32* %32, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %38 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.fprop_global*, %struct.fprop_global** %4, align 8
  %42 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %41, i32 0, i32 1
  %43 = call i32 @write_seqcount_end(i32* %42)
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %30, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @percpu_counter_sum(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
