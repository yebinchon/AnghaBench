; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_CODEC_CHN = common dso_local global i64 0, align 8
@VORTEX_CODEC_CTRL = common dso_local global i64 0, align 8
@VORTEX_CODEC_EN = common dso_local global i64 0, align 8
@EN_CODEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @vortex_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_codec_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 32
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @VORTEX_CODEC_CHN, align 8
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @hwwrite(i32 %10, i64 %15, i32 %17)
  %19 = call i32 @msleep(i32 2)
  br label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %28 = call i32 @hwwrite(i32 %26, i64 %27, i32 168)
  %29 = call i32 @msleep(i32 2)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %34 = call i32 @hwwrite(i32 %32, i64 %33, i32 32936)
  %35 = call i32 @msleep(i32 2)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %40 = call i32 @hwwrite(i32 %38, i64 %39, i32 33000)
  %41 = call i32 @msleep(i32 2)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %46 = call i32 @hwwrite(i32 %44, i64 %45, i32 32936)
  %47 = call i32 @msleep(i32 2)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %52 = call i32 @hwwrite(i32 %50, i64 %51, i32 168)
  %53 = call i32 @msleep(i32 2)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %58 = call i32 @hwwrite(i32 %56, i64 %57, i32 232)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %75, %23
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @VORTEX_CODEC_CHN, align 8
  %67 = load i32, i32* %3, align 4
  %68 = shl i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %3, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @hwwrite(i32 %65, i64 %70, i32 %72)
  %74 = call i32 @msleep(i32 5)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @VORTEX_CODEC_CTRL, align 8
  %83 = call i32 @hwwrite(i32 %81, i64 %82, i32 232)
  %84 = call i32 @msleep(i32 1)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @VORTEX_CODEC_EN, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @VORTEX_CODEC_EN, align 8
  %93 = call i32 @hwread(i32 %91, i64 %92)
  %94 = load i32, i32* @EN_CODEC, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @hwwrite(i32 %87, i64 %88, i32 %95)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hwread(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
