; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIA_REG_AC97_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"codec_ready: codec %i is not ready [0x%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*, i32)* @snd_via82xx_codec_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_codec_ready(%struct.via82xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %6, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ugt i32 %9, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = call i32 @udelay(i32 1)
  %14 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %15 = call i32 @snd_via82xx_codec_xread(%struct.via82xx* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @VIA_REG_AC97_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 65535
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %12
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %25 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %31 = call i32 @snd_via82xx_codec_xread(%struct.via82xx* %30)
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %23, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_via82xx_codec_xread(%struct.via82xx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
