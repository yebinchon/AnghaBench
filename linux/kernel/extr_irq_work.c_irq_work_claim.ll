; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_irq_work.c_irq_work_claim.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_irq_work.c_irq_work_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_work = type { i64 }

@IRQ_WORK_PENDING = common dso_local global i64 0, align 8
@IRQ_WORK_CLAIMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_work*)* @irq_work_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_work_claim(%struct.irq_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_work*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_work* %0, %struct.irq_work** %3, align 8
  %7 = load %struct.irq_work*, %struct.irq_work** %3, align 8
  %8 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IRQ_WORK_PENDING, align 8
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IRQ_WORK_CLAIMED, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.irq_work*, %struct.irq_work** %3, align 8
  %18 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @cmpxchg(i64* %18, i64 %19, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %35

26:                                               ; preds = %13
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @IRQ_WORK_PENDING, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %4, align 8
  %34 = call i32 (...) @cpu_relax()
  br label %13

35:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
