; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_valid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32 }

@VIA_REG_AC97_PRIMARY_VALID = common dso_local global i32 0, align 4
@VIA_REG_AC97_SECONDARY_VALID = common dso_local global i32 0, align 4
@VIA_REG_AC97_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*, i32)* @snd_via82xx_codec_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_codec_valid(%struct.via82xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @VIA_REG_AC97_PRIMARY_VALID, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VIA_REG_AC97_SECONDARY_VALID, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %36, %16
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ugt i32 %19, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %24 = call i32 @snd_via82xx_codec_xread(%struct.via82xx* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VIA_REG_AC97_BUSY, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 65535
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %22
  %37 = call i32 @udelay(i32 1)
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_via82xx_codec_xread(%struct.via82xx*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
