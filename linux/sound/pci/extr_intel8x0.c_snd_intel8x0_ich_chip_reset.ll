; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ich_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ich_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GLOB_CNT = common dso_local global i32 0, align 4
@ICH_ACLINK = common dso_local global i32 0, align 4
@ICH_PCM_246_MASK = common dso_local global i32 0, align 4
@ICH_AC97COLD = common dso_local global i32 0, align 4
@ICH_AC97WARM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AC'97 warm reset still in progress? [0x%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*)* @snd_intel8x0_ich_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_ich_chip_reset(%struct.intel8x0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  %6 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %7 = load i32, i32* @GLOB_CNT, align 4
  %8 = call i32 @ICHREG(i32 %7)
  %9 = call i32 @igetdword(%struct.intel8x0* %6, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @ICH_ACLINK, align 4
  %11 = load i32, i32* @ICH_PCM_246_MASK, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ICH_AC97COLD, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ICH_AC97COLD, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ICH_AC97WARM, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %29 = load i32, i32* @GLOB_CNT, align 4
  %30 = call i32 @ICHREG(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @iputdword(%struct.intel8x0* %28, i32 %30, i32 %31)
  %33 = load i32, i32* @jiffies, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 4
  %36 = add nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %50, %24
  %40 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %41 = load i32, i32* @GLOB_CNT, align 4
  %42 = call i32 @ICHREG(i32 %41)
  %43 = call i32 @igetdword(%struct.intel8x0* %40, i32 %42)
  %44 = load i32, i32* @ICH_AC97WARM, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %68

48:                                               ; preds = %39
  %49 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* @jiffies, align 4
  %53 = call i64 @time_after_eq(i64 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %39, label %55

55:                                               ; preds = %50
  %56 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %57 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %62 = load i32, i32* @GLOB_CNT, align 4
  %63 = call i32 @ICHREG(i32 %62)
  %64 = call i32 @igetdword(%struct.intel8x0* %61, i32 %63)
  %65 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %55, %47
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
