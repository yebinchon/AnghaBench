; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_opti92x-ad1848.c_snd_opti93x_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_opti92x-ad1848.c_snd_opti93x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opti9xx = type { %struct.snd_wss* }
%struct.snd_wss = type { i64, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@OPTi93X_IRQ_PLAYBACK = common dso_local global i8 0, align 1
@OPTi93X_IRQ_CAPTURE = common dso_local global i8 0, align 1
@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_opti93x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opti93x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_opti9xx*, align 8
  %7 = alloca %struct.snd_wss*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_opti9xx*
  store %struct.snd_opti9xx* %10, %struct.snd_opti9xx** %6, align 8
  %11 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %6, align 8
  %12 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %11, i32 0, i32 0
  %13 = load %struct.snd_wss*, %struct.snd_wss** %12, align 8
  store %struct.snd_wss* %13, %struct.snd_wss** %7, align 8
  %14 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %15 = icmp ne %struct.snd_wss* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %6, align 8
  %20 = call i32 @OPTi9XX_MC_REG(i32 11)
  %21 = call zeroext i8 @snd_opti9xx_read(%struct.snd_opti9xx* %19, i32 %20)
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @OPTi93X_IRQ_PLAYBACK, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %35 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_pcm_period_elapsed(i64 %36)
  br label %38

38:                                               ; preds = %33, %28, %18
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @OPTi93X_IRQ_CAPTURE, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %47 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %52 = call i32 @snd_wss_overrange(%struct.snd_wss* %51)
  %53 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %54 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @snd_pcm_period_elapsed(i64 %55)
  br label %57

57:                                               ; preds = %50, %45, %38
  %58 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %59 = load i32, i32* @STATUS, align 4
  %60 = call i32 @OPTi93X_PORT(%struct.snd_wss* %58, i32 %59)
  %61 = call i32 @outb(i32 0, i32 %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local zeroext i8 @snd_opti9xx_read(%struct.snd_opti9xx*, i32) #1

declare dso_local i32 @OPTi9XX_MC_REG(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_wss_overrange(%struct.snd_wss*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @OPTi93X_PORT(%struct.snd_wss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
