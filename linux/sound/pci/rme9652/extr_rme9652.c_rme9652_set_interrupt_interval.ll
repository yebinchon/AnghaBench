; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_interrupt_interval.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_interrupt_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32, i32 }

@RME9652_latency = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_interrupt_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_interrupt_interval(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %16 = call i32 @rme9652_stop(%struct.snd_rme9652* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 7
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %23, %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* @RME9652_latency, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %32 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @rme9652_encode_latency(i32 %35)
  %37 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %38 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %42 = load i32, i32* @RME9652_control_register, align 4
  %43 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %44 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rme9652_write(%struct.snd_rme9652* %41, i32 %42, i32 %45)
  %47 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %48 = call i32 @rme9652_compute_period_size(%struct.snd_rme9652* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %28
  %52 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %53 = call i32 @rme9652_start(%struct.snd_rme9652* %52)
  br label %54

54:                                               ; preds = %51, %28
  %55 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %56 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_irq(i32* %56)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_encode_latency(i32) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_compute_period_size(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
