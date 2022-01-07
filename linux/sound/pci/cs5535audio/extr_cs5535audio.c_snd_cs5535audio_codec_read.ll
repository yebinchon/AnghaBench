; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ACC_CODEC_CNTL_RD_CMD = common dso_local global i32 0, align 4
@CMD_NEW = common dso_local global i32 0, align 4
@ACC_CODEC_CNTL = common dso_local global i32 0, align 4
@ACC_CODEC_STATUS = common dso_local global i32 0, align 4
@STS_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failure reading codec reg 0x%x, Last value=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.cs5535audio*, i16)* @snd_cs5535audio_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_cs5535audio_codec_read(%struct.cs5535audio* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.cs5535audio*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs5535audio* %0, %struct.cs5535audio** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = shl i32 %9, 24
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ACC_CODEC_CNTL_RD_CMD, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @CMD_NEW, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %18 = load i32, i32* @ACC_CODEC_CNTL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cs_writel(%struct.cs5535audio* %17, i32 %18, i32 %19)
  %21 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %22 = call i32 @wait_till_cmd_acked(%struct.cs5535audio* %21, i32 50)
  store i32 50, i32* %6, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %25 = load i32, i32* @ACC_CODEC_STATUS, align 4
  %26 = call i32 @cs_readl(%struct.cs5535audio* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @STS_NEW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 24
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31, %23
  %39 = call i32 @udelay(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %23, label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %49 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i16, i16* %4, align 2
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i16 zeroext %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %7, align 4
  %58 = trunc i32 %57 to i16
  ret i16 %58
}

declare dso_local i32 @cs_writel(%struct.cs5535audio*, i32, i32) #1

declare dso_local i32 @wait_till_cmd_acked(%struct.cs5535audio*, i32) #1

declare dso_local i32 @cs_readl(%struct.cs5535audio*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
