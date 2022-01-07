; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_cond_unmask_eoi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_cond_unmask_eoi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32 }
%struct.irq_chip = type { i32, i32 (i32*)* }

@IRQS_ONESHOT = common dso_local global i32 0, align 4
@IRQCHIP_EOI_THREADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, %struct.irq_chip*)* @cond_unmask_eoi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_unmask_eoi_irq(%struct.irq_desc* %0, %struct.irq_chip* %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store %struct.irq_chip* %1, %struct.irq_chip** %4, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IRQS_ONESHOT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %13 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %12, i32 0, i32 1
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 1
  %17 = call i32 %14(i32* %16)
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 1
  %21 = call i32 @irqd_irq_disabled(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 1
  %26 = call i64 @irqd_irq_masked(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %35 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %34, i32 0, i32 1
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 1
  %39 = call i32 %36(i32* %38)
  %40 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %41 = call i32 @unmask_irq(%struct.irq_desc* %40)
  br label %57

42:                                               ; preds = %28, %23, %18
  %43 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %44 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IRQCHIP_EOI_THREADED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %51 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %50, i32 0, i32 1
  %52 = load i32 (i32*)*, i32 (i32*)** %51, align 8
  %53 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 1
  %55 = call i32 %52(i32* %54)
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %11, %56, %33
  ret void
}

declare dso_local i32 @irqd_irq_disabled(i32*) #1

declare dso_local i64 @irqd_irq_masked(i32*) #1

declare dso_local i32 @unmask_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
