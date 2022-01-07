; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@VORTEX_CODEC_CTRL = common dso_local global i32 0, align 4
@POLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ac97 codec stuck busy\0A\00", align 1
@VORTEX_CODEC_ADDSHIFT = common dso_local global i16 0, align 2
@VORTEX_CODEC_ADDMASK = common dso_local global i16 0, align 2
@VORTEX_CODEC_ID_SHIFT = common dso_local global i16 0, align 2
@VORTEX_CODEC_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ac97 address never arrived\0A\00", align 1
@VORTEX_CODEC_DATMASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @vortex_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @vortex_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %36, %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VORTEX_CODEC_CTRL, align 4
  %19 = call i32 @hwread(i32 %17, i32 %18)
  %20 = and i32 %19, 256
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = call i32 @udelay(i32 100)
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @POLL_COUNT, align 4
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %3, align 2
  br label %100

36:                                               ; preds = %23
  br label %14

37:                                               ; preds = %14
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @VORTEX_CODEC_ADDSHIFT, align 2
  %41 = zext i16 %40 to i32
  %42 = shl i32 %39, %41
  %43 = load i16, i16* @VORTEX_CODEC_ADDMASK, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @VORTEX_CODEC_ID_SHIFT, align 2
  %51 = zext i16 %50 to i32
  %52 = shl i32 %49, %51
  %53 = or i32 %45, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %7, align 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VORTEX_CODEC_IO, align 4
  %59 = load i16, i16* %7, align 2
  %60 = call i32 @hwwrite(i32 %57, i32 %58, i16 zeroext %59)
  br label %61

61:                                               ; preds = %81, %37
  %62 = call i32 @udelay(i32 100)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VORTEX_CODEC_IO, align 4
  %67 = call i32 @hwread(i32 %65, i32 %66)
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %8, align 2
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @POLL_COUNT, align 4
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i16 -1, i16* %3, align 2
  br label %100

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i16, i16* %8, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @VORTEX_CODEC_ADDMASK, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %83, %85
  %87 = load i16, i16* %5, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @VORTEX_CODEC_ADDSHIFT, align 2
  %90 = zext i16 %89 to i32
  %91 = shl i32 %88, %90
  %92 = icmp ne i32 %86, %91
  br i1 %92, label %61, label %93

93:                                               ; preds = %81
  %94 = load i16, i16* %8, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @VORTEX_CODEC_DATMASK, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %95, %97
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %3, align 2
  br label %100

100:                                              ; preds = %93, %73, %29
  %101 = load i16, i16* %3, align 2
  ret i16 %101
}

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hwwrite(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
