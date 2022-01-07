; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32 }

@RME9652_Master = common dso_local global i32 0, align 4
@RME9652_wsel = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_sync_mode(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @RME9652_Master, align 4
  %9 = load i32, i32* @RME9652_wsel, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %13 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RME9652_wsel, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @RME9652_Master, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %26 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @RME9652_Master, align 4
  %29 = load i32, i32* @RME9652_wsel, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %32 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %2, %27, %16, %7
  %36 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %37 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %42 = call i32 @rme9652_stop(%struct.snd_rme9652* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %45 = load i32, i32* @RME9652_control_register, align 4
  %46 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %47 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rme9652_write(%struct.snd_rme9652* %44, i32 %45, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %54 = call i32 @rme9652_start(%struct.snd_rme9652* %53)
  br label %55

55:                                               ; preds = %52, %43
  ret i32 0
}

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
