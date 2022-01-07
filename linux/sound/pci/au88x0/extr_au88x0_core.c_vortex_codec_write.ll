; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VORTEX_CODEC_CTRL = common dso_local global i32 0, align 4
@POLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ac97 codec stuck busy\0A\00", align 1
@VORTEX_CODEC_IO = common dso_local global i32 0, align 4
@VORTEX_CODEC_ADDSHIFT = common dso_local global i16 0, align 2
@VORTEX_CODEC_ADDMASK = common dso_local global i16 0, align 2
@VORTEX_CODEC_DATSHIFT = common dso_local global i16 0, align 2
@VORTEX_CODEC_DATMASK = common dso_local global i16 0, align 2
@VORTEX_CODEC_WRITE = common dso_local global i16 0, align 2
@VORTEX_CODEC_ID_SHIFT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @vortex_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VORTEX_CODEC_CTRL, align 4
  %18 = call i32 @hwread(i32 %16, i32 %17)
  %19 = and i32 %18, 256
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = call i32 @udelay(i32 100)
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @POLL_COUNT, align 4
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %76

35:                                               ; preds = %22
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VORTEX_CODEC_IO, align 4
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @VORTEX_CODEC_ADDSHIFT, align 2
  %44 = zext i16 %43 to i32
  %45 = shl i32 %42, %44
  %46 = load i16, i16* @VORTEX_CODEC_ADDMASK, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @VORTEX_CODEC_DATSHIFT, align 2
  %52 = zext i16 %51 to i32
  %53 = shl i32 %50, %52
  %54 = load i16, i16* @VORTEX_CODEC_DATMASK, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %53, %55
  %57 = or i32 %48, %56
  %58 = load i16, i16* @VORTEX_CODEC_WRITE, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %57, %59
  %61 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %61, i32 0, i32 0
  %63 = load i16, i16* %62, align 8
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @VORTEX_CODEC_ID_SHIFT, align 2
  %66 = zext i16 %65 to i32
  %67 = shl i32 %64, %66
  %68 = or i32 %60, %67
  %69 = trunc i32 %68 to i16
  %70 = call i32 @hwwrite(i32 %39, i32 %40, i16 zeroext %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @VORTEX_CODEC_IO, align 4
  %75 = call i32 @hwread(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %36, %28
  ret void
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
