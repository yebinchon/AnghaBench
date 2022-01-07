; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_snd_ac97_compat_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_snd_ac97_compat_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_4__, i32*, %struct.ac97_codec_device* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ac97_codec_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@compat_soc_ac97_bus = common dso_local global i32 0, align 4
@compat_ac97_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-compat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_ac97* @snd_ac97_compat_alloc(%struct.ac97_codec_device* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.ac97_codec_device*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  store %struct.ac97_codec_device* %0, %struct.ac97_codec_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_ac97* @kzalloc(i32 32, i32 %6)
  store %struct.snd_ac97* %7, %struct.snd_ac97** %4, align 8
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = icmp eq %struct.snd_ac97* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.snd_ac97* @ERR_PTR(i32 %12)
  store %struct.snd_ac97* %13, %struct.snd_ac97** %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 2
  store %struct.ac97_codec_device* %15, %struct.ac97_codec_device** %17, align 8
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 1
  store i32* @compat_soc_ac97_bus, i32** %19, align 8
  %20 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %21 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %20, i32 0, i32 0
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load i32, i32* @compat_ac97_release, align 4
  %26 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %29, i32 0, i32 0
  %31 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %32 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %31, i32 0, i32 0
  %33 = call i32 @dev_name(i32* %32)
  %34 = call i32 @dev_set_name(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 0
  %37 = call i32 @device_register(%struct.TYPE_4__* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %14
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %41, i32 0, i32 0
  %43 = call i32 @put_device(%struct.TYPE_4__* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.snd_ac97* @ERR_PTR(i32 %44)
  store %struct.snd_ac97* %45, %struct.snd_ac97** %2, align 8
  br label %48

46:                                               ; preds = %14
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  store %struct.snd_ac97* %47, %struct.snd_ac97** %2, align 8
  br label %48

48:                                               ; preds = %46, %40, %10
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  ret %struct.snd_ac97* %49
}

declare dso_local %struct.snd_ac97* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_ac97* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
