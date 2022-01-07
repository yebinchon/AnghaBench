; ModuleID = '/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_spu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_spu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_RESET_REGISTER = common dso_local global i64 0, align 8
@SPU_REGISTER_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @spu_write_wait()
  %5 = load i64, i64* @ARM_RESET_REGISTER, align 8
  %6 = call i32 @readl(i64 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @spu_write_wait()
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* @ARM_RESET_REGISTER, align 8
  %14 = call i32 @writel(i32 %12, i64 %13)
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @local_irq_restore(i64 %15)
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %43, %0
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = call i32 (...) @spu_write_wait()
  %22 = load i64, i64* @SPU_REGISTER_BASE, align 8
  %23 = load i32, i32* %1, align 4
  %24 = mul nsw i32 %23, 128
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -16385
  %30 = or i32 %29, 32768
  store i32 %30, i32* %3, align 4
  %31 = call i32 (...) @spu_write_wait()
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i64, i64* @SPU_REGISTER_BASE, align 8
  %36 = load i32, i32* %1, align 4
  %37 = mul nsw i32 %36, 128
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %17

46:                                               ; preds = %17
  ret void
}

declare dso_local i32 @spu_write_wait(...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
