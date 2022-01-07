; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_interrupt_interval.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_interrupt_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32 }

@HDSPM_LatencyMask = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32)* @hdspm_set_interrupt_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_interrupt_interval(%struct.hdspm* %0, i32 %1) #0 {
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %7 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 32, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 7
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %18, %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = lshr i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %15

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* @HDSPM_LatencyMask, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @hdspm_encode_latency(i32 %31)
  %33 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %34 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %38 = load i32, i32* @HDSPM_controlRegister, align 4
  %39 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %40 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hdspm_write(%struct.hdspm* %37, i32 %38, i32 %41)
  %43 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %44 = call i32 @hdspm_compute_period_size(%struct.hdspm* %43)
  %45 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %46 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdspm_encode_latency(i32) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_compute_period_size(%struct.hdspm*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
