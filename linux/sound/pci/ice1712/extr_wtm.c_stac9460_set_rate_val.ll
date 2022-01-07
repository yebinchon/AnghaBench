; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.wtm_spec* }
%struct.wtm_spec = type { i32 }

@STAC946X_MASTER_CLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @stac9460_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac9460_set_rate_val(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca %struct.wtm_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = load %struct.wtm_spec*, %struct.wtm_spec** %10, align 8
  store %struct.wtm_spec* %11, %struct.wtm_spec** %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ule i32 %16, 48000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 8, i8* %6, align 1
  br label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp ule i32 %20, 96000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8 17, i8* %6, align 1
  br label %24

23:                                               ; preds = %19
  store i8 18, i8* %6, align 1
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = load i32, i32* @STAC946X_MASTER_CLOCKING, align 4
  %29 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %27, i32 %28)
  store i8 %29, i8* %5, align 1
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %56

36:                                               ; preds = %26
  %37 = load %struct.wtm_spec*, %struct.wtm_spec** %8, align 8
  %38 = getelementptr inbounds %struct.wtm_spec, %struct.wtm_spec* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  store i16 -1, i16* %7, align 2
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = call i32 @stac9460_dac_mute_all(%struct.snd_ice1712* %40, i32 0, i16* %7)
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = load i32, i32* @STAC946X_MASTER_CLOCKING, align 4
  %44 = load i8, i8* %6, align 1
  %45 = call i32 @stac9460_put(%struct.snd_ice1712* %42, i32 %43, i8 zeroext %44)
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = load i32, i32* @STAC946X_MASTER_CLOCKING, align 4
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @stac9460_2_put(%struct.snd_ice1712* %46, i32 %47, i8 zeroext %48)
  %50 = call i32 @udelay(i32 10)
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %52 = call i32 @stac9460_dac_mute_all(%struct.snd_ice1712* %51, i32 1, i16* %7)
  %53 = load %struct.wtm_spec*, %struct.wtm_spec** %8, align 8
  %54 = getelementptr inbounds %struct.wtm_spec, %struct.wtm_spec* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %36, %35, %14
  ret void
}

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stac9460_dac_mute_all(%struct.snd_ice1712*, i32, i16*) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
