; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_init_mask_cache.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_init_mask_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32, i32, %struct.irq_chip_type* }
%struct.irq_chip_type = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_GC_MASK_CACHE_PER_TYPE = common dso_local global i32 0, align 4
@IRQ_GC_INIT_MASK_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_chip_generic*, i32)* @irq_gc_init_mask_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_gc_init_mask_cache(%struct.irq_chip_generic* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_type*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %10 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %9, i32 0, i32 2
  %11 = load %struct.irq_chip_type*, %struct.irq_chip_type** %10, align 8
  store %struct.irq_chip_type* %11, %struct.irq_chip_type** %5, align 8
  %12 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %13 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %12, i32 0, i32 1
  store i32* %13, i32** %6, align 8
  %14 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %15 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %59, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %21 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IRQ_GC_MASK_CACHE_PER_TYPE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %30, i64 %32
  %34 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %33, i32 0, i32 2
  store i32* %34, i32** %6, align 8
  %35 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %35, i64 %37
  %39 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %29, %24
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.irq_chip_type*, %struct.irq_chip_type** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %44, i64 %46
  %48 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %47, i32 0, i32 0
  store i32* %43, i32** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IRQ_GC_INIT_MASK_CACHE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %54, i32 %55)
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %18

62:                                               ; preds = %18
  ret void
}

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
