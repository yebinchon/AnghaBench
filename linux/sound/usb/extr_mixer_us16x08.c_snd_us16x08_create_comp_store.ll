; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_comp_store.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_create_comp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_us16x08_comp_store = type { i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SND_US16X08_MAX_CHANNELS = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_THRESHOLD = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_RATIO = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_GAIN = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_SWITCH = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_ATTACK = common dso_local global i32 0, align 4
@SND_US16X08_ID_COMP_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_us16x08_comp_store* ()* @snd_us16x08_create_comp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_us16x08_comp_store* @snd_us16x08_create_comp_store() #0 {
  %1 = alloca %struct.snd_us16x08_comp_store*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_us16x08_comp_store*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.snd_us16x08_comp_store* @kmalloc(i32 8, i32 %4)
  store %struct.snd_us16x08_comp_store* %5, %struct.snd_us16x08_comp_store** %3, align 8
  %6 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %7 = icmp ne %struct.snd_us16x08_comp_store* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.snd_us16x08_comp_store* null, %struct.snd_us16x08_comp_store** %1, align 8
  br label %80

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %75, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SND_US16X08_MAX_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %16 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* @SND_US16X08_ID_COMP_THRESHOLD, align 4
  %19 = call i64 @COMP_STORE_IDX(i32 %18)
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 32, i32* %24, align 4
  %25 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %26 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* @SND_US16X08_ID_COMP_RATIO, align 4
  %29 = call i64 @COMP_STORE_IDX(i32 %28)
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %36 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* @SND_US16X08_ID_COMP_GAIN, align 4
  %39 = call i64 @COMP_STORE_IDX(i32 %38)
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  %45 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %46 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* @SND_US16X08_ID_COMP_SWITCH, align 4
  %49 = call i64 @COMP_STORE_IDX(i32 %48)
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %56 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* @SND_US16X08_ID_COMP_ATTACK, align 4
  %59 = call i64 @COMP_STORE_IDX(i32 %58)
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  %66 = getelementptr inbounds %struct.snd_us16x08_comp_store, %struct.snd_us16x08_comp_store* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* @SND_US16X08_ID_COMP_RELEASE, align 4
  %69 = call i64 @COMP_STORE_IDX(i32 %68)
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %14
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %10

78:                                               ; preds = %10
  %79 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %3, align 8
  store %struct.snd_us16x08_comp_store* %79, %struct.snd_us16x08_comp_store** %1, align 8
  br label %80

80:                                               ; preds = %78, %8
  %81 = load %struct.snd_us16x08_comp_store*, %struct.snd_us16x08_comp_store** %1, align 8
  ret %struct.snd_us16x08_comp_store* %81
}

declare dso_local %struct.snd_us16x08_comp_store* @kmalloc(i32, i32) #1

declare dso_local i64 @COMP_STORE_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
