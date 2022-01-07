; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_enable_percpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_enable_percpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQ_GET_DESC_CHECK_PERCPU = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to set type for IRQ%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_percpu_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IRQ_GET_DESC_CHECK_PERCPU, align 4
  %12 = call %struct.irq_desc* @irq_get_desc_lock(i32 %10, i64* %6, i32 %11)
  store %struct.irq_desc* %12, %struct.irq_desc** %7, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %14 = icmp ne %struct.irq_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 0
  %26 = call i32 @irqd_get_trigger_type(i32* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @__irq_set_trigger(%struct.irq_desc* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @irq_percpu_enable(%struct.irq_desc* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i32 @irqd_get_trigger_type(i32*) #1

declare dso_local i32 @__irq_set_trigger(%struct.irq_desc*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @irq_percpu_enable(%struct.irq_desc*, i32) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
