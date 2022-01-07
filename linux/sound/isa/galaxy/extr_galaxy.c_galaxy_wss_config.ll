; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_wss_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_wss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_galaxy = type { i32 }

@GALAXY_MODE_WSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_galaxy*, i32)* @galaxy_wss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @galaxy_wss_config(%struct.snd_galaxy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_galaxy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_galaxy* %0, %struct.snd_galaxy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %8 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wss_detect(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %17 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wss_set_config(i32 %18, i32 %19)
  %21 = load %struct.snd_galaxy*, %struct.snd_galaxy** %4, align 8
  %22 = load i32, i32* @GALAXY_MODE_WSS, align 4
  %23 = call i32 @galaxy_set_mode(%struct.snd_galaxy* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @wss_detect(i32) #1

declare dso_local i32 @wss_set_config(i32, i32) #1

declare dso_local i32 @galaxy_set_mode(%struct.snd_galaxy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
