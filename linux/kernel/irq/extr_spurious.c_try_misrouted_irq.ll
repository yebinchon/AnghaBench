; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_spurious.c_try_misrouted_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_spurious.c_try_misrouted_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.irqaction* }
%struct.irqaction = type { i32 }

@irqfixup = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irq_desc*, i64)* @try_misrouted_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_misrouted_irq(i32 %0, %struct.irq_desc* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.irqaction*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @irqfixup, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IRQ_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %42

17:                                               ; preds = %12
  %18 = load i32, i32* @irqfixup, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %42

25:                                               ; preds = %21
  %26 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 0
  %28 = load %struct.irqaction*, %struct.irqaction** %27, align 8
  store %struct.irqaction* %28, %struct.irqaction** %8, align 8
  %29 = call i32 (...) @barrier()
  %30 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %31 = icmp ne %struct.irqaction* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.irqaction*, %struct.irqaction** %8, align 8
  %34 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IRQF_IRQPOLL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %32, %25
  %40 = phi i1 [ false, %25 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %24, %20, %16, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
