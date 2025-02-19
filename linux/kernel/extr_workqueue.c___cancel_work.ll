; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___cancel_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___cancel_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*, i32)* @__cancel_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cancel_work(%struct.work_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @try_to_grab_pending(%struct.work_struct* %9, i32 %10, i64* %6)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %8, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %29 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %30 = call i32 @get_work_pool_id(%struct.work_struct* %29)
  %31 = call i32 @set_work_pool_and_clear_pending(%struct.work_struct* %28, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @try_to_grab_pending(%struct.work_struct*, i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_work_pool_and_clear_pending(%struct.work_struct*, i32) #1

declare dso_local i32 @get_work_pool_id(%struct.work_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
