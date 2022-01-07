; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1980.c_ad1980_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1980.c_ad1980_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_ac97 = type { i32 }

@AD1980_VENDOR_ID = common dso_local global i32 0, align 4
@AD1980_VENDOR_MASK = common dso_local global i32 0, align 4
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to reset: AC97 link error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @ad1980_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1980_reset(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.snd_ac97* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.snd_ac97* %10, %struct.snd_ac97** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %13 = load i32, i32* @AD1980_VENDOR_ID, align 4
  %14 = load i32, i32* @AD1980_VENDOR_MASK, align 4
  %15 = call i32 @snd_ac97_reset(%struct.snd_ac97* %12, i32 1, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %34

19:                                               ; preds = %11
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 39168)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = icmp ult i32 %24, 10
  br i1 %26, label %11, label %27

27:                                               ; preds = %23
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.snd_ac97* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_ac97_reset(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
