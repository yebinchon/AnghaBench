; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATI_REG_PHYS_OUT_ADDR_SHIFT = common dso_local global i16 0, align 2
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i16 0, align 2
@ATI_REG_PHYS_OUT_RW = common dso_local global i16 0, align 2
@PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@PHYS_IN_ADDR = common dso_local global i32 0, align 4
@ATI_REG_PHYS_IN_READ_FLAG = common dso_local global i32 0, align 4
@ATI_REG_PHYS_IN_DATA_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"codec read timeout (reg %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.atiixp*, i16, i16)* @snd_atiixp_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_atiixp_codec_read(%struct.atiixp* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.atiixp*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %10 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %11 = call i64 @snd_atiixp_acquire_codec(%struct.atiixp* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %70

14:                                               ; preds = %3
  %15 = load i16, i16* %7, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @ATI_REG_PHYS_OUT_ADDR_SHIFT, align 2
  %18 = zext i16 %17 to i32
  %19 = shl i32 %16, %18
  %20 = load i16, i16* @ATI_REG_PHYS_OUT_ADDR_EN, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i16, i16* @ATI_REG_PHYS_OUT_RW, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %30 = load i32, i32* @PHYS_OUT_ADDR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @atiixp_write(%struct.atiixp* %29, i32 %30, i32 %31)
  %33 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %34 = call i64 @snd_atiixp_acquire_codec(%struct.atiixp* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i16 -1, i16* %4, align 2
  br label %70

37:                                               ; preds = %14
  store i32 1000, i32* %9, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %40 = load i32, i32* @PHYS_IN_ADDR, align 4
  %41 = call i32 @atiixp_read(%struct.atiixp* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ATI_REG_PHYS_IN_READ_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ATI_REG_PHYS_IN_DATA_SHIFT, align 4
  %49 = lshr i32 %47, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %4, align 2
  br label %70

51:                                               ; preds = %38
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %38, label %57

57:                                               ; preds = %53
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp slt i32 %59, 124
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.atiixp*, %struct.atiixp** %5, align 8
  %63 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i16, i16* %7, align 2
  %68 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i16 zeroext %67)
  br label %69

69:                                               ; preds = %61, %57
  store i16 -1, i16* %4, align 2
  br label %70

70:                                               ; preds = %69, %46, %36, %13
  %71 = load i16, i16* %4, align 2
  ret i16 %71
}

declare dso_local i64 @snd_atiixp_acquire_codec(%struct.atiixp*) #1

declare dso_local i32 @atiixp_write(%struct.atiixp*, i32, i32) #1

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
