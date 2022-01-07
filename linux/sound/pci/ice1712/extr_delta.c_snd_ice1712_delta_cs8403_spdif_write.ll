; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_cs8403_spdif_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_cs8403_spdif_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ICE1712_DELTA_SPDIF_OUT_STAT_CLOCK = common dso_local global i8 0, align 1
@ICE1712_DELTA_SPDIF_OUT_STAT_DATA = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8)* @snd_ice1712_delta_cs8403_spdif_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_delta_cs8403_spdif_write(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load i8, i8* @ICE1712_DELTA_SPDIF_OUT_STAT_CLOCK, align 1
  store i8 %9, i8* %6, align 1
  %10 = load i8, i8* @ICE1712_DELTA_SPDIF_OUT_STAT_DATA, align 1
  store i8 %10, i8* %7, align 1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %16 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %14, i32 %15)
  store i8 %16, i8* %5, align 1
  store i32 7, i32* %8, align 4
  br label %17

17:                                               ; preds = %61, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %17
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = xor i32 %25, -1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %5, align 1
  br label %44

44:                                               ; preds = %37, %20
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %47 = load i8, i8* %5, align 1
  %48 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %45, i32 %46, i8 zeroext %47)
  %49 = call i32 @udelay(i32 100)
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %5, align 1
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %57 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %58 = load i8, i8* %5, align 1
  %59 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %56, i32 %57, i8 zeroext %58)
  %60 = call i32 @udelay(i32 100)
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load i8, i8* %6, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %66, -1
  %68 = load i8, i8* %5, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %5, align 1
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %73 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %74 = load i8, i8* %5, align 1
  %75 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %72, i32 %73, i8 zeroext %74)
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %77 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
