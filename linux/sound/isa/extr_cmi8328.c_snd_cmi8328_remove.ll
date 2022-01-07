; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_cmi8328.c_snd_cmi8328_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_cmi8328.c_snd_cmi8328_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_card = type { %struct.snd_cmi8328* }
%struct.snd_cmi8328 = type { i32, i64 }

@CFG1 = common dso_local global i32 0, align 4
@CFG1_SB_DISABLE = common dso_local global i32 0, align 4
@CFG2 = common dso_local global i32 0, align 4
@CFG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @snd_cmi8328_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmi8328_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_cmi8328*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.snd_card* @dev_get_drvdata(%struct.device* %7)
  store %struct.snd_card* %8, %struct.snd_card** %5, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = load %struct.snd_cmi8328*, %struct.snd_cmi8328** %10, align 8
  store %struct.snd_cmi8328* %11, %struct.snd_cmi8328** %6, align 8
  %12 = load %struct.snd_cmi8328*, %struct.snd_cmi8328** %6, align 8
  %13 = getelementptr inbounds %struct.snd_cmi8328, %struct.snd_cmi8328* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CFG1, align 4
  %16 = load i32, i32* @CFG1_SB_DISABLE, align 4
  %17 = call i32 @snd_cmi8328_cfg_write(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.snd_cmi8328*, %struct.snd_cmi8328** %6, align 8
  %19 = getelementptr inbounds %struct.snd_cmi8328, %struct.snd_cmi8328* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CFG2, align 4
  %22 = call i32 @snd_cmi8328_cfg_write(i32 %20, i32 %21, i32 0)
  %23 = load %struct.snd_cmi8328*, %struct.snd_cmi8328** %6, align 8
  %24 = getelementptr inbounds %struct.snd_cmi8328, %struct.snd_cmi8328* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CFG3, align 4
  %27 = call i32 @snd_cmi8328_cfg_write(i32 %25, i32 %26, i32 0)
  %28 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %29 = call i32 @snd_card_free(%struct.snd_card* %28)
  ret i32 0
}

declare dso_local %struct.snd_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @snd_cmi8328_cfg_write(i32, i32, i32) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
