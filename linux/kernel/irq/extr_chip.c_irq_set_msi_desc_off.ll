; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_set_msi_desc_off.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_set_msi_desc_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.irq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.msi_desc* }

@IRQ_GET_DESC_CHECK_GLOBAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_set_msi_desc_off(i32 %0, i32 %1, %struct.msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msi_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.msi_desc* %2, %struct.msi_desc** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add i32 %10, %11
  %13 = load i32, i32* @IRQ_GET_DESC_CHECK_GLOBAL, align 4
  %14 = call %struct.irq_desc* @irq_get_desc_lock(i32 %12, i64* %8, i32 %13)
  store %struct.irq_desc* %14, %struct.irq_desc** %9, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %9, align 8
  %16 = icmp ne %struct.irq_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %22 = load %struct.irq_desc*, %struct.irq_desc** %9, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.msi_desc* %21, %struct.msi_desc** %24, align 8
  %25 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %26 = icmp ne %struct.msi_desc* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %33 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %27, %20
  %35 = load %struct.irq_desc*, %struct.irq_desc** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %35, i64 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
