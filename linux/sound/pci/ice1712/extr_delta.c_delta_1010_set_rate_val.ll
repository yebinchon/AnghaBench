; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_delta_1010_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_delta_1010_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_DELTA_DFS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @delta_1010_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_1010_set_rate_val(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %16 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %14, i32 %15)
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ugt i32 %24, 48000
  br i1 %25, label %26, label %33

26:                                               ; preds = %10
  %27 = load i8, i8* @ICE1712_DELTA_DFS, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  br label %33

33:                                               ; preds = %26, %10
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %40, i32 %41, i8 zeroext %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
