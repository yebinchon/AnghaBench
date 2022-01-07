; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_semaphore.c_down_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_semaphore.c_down_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @down_trylock(%struct.semaphore* %0) #0 {
  %2 = alloca %struct.semaphore*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.semaphore* %0, %struct.semaphore** %2, align 8
  %5 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %6 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @raw_spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %10 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %21 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.semaphore*, %struct.semaphore** %2, align 8
  %24 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @raw_spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
