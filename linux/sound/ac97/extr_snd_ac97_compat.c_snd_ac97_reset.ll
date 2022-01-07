; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_snd_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_snd_ac97_compat.c_snd_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.ac97_codec_device = type { i32, i32, %struct.ac97_controller* }
%struct.ac97_controller = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_reset(%struct.snd_ac97* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ac97_codec_device*, align 8
  %11 = alloca %struct.ac97_controller*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ac97_codec_device* @to_ac97_device(i32 %15)
  store %struct.ac97_codec_device* %16, %struct.ac97_codec_device** %10, align 8
  %17 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %10, align 8
  %18 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %17, i32 0, i32 2
  %19 = load %struct.ac97_controller*, %struct.ac97_controller** %18, align 8
  store %struct.ac97_controller* %19, %struct.ac97_controller** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %24 = call i32 @compat_ac97_warm_reset(%struct.snd_ac97* %23)
  %25 = load %struct.ac97_controller*, %struct.ac97_controller** %11, align 8
  %26 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %10, align 8
  %27 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_ac97_bus_scan_one(%struct.ac97_controller* %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %10, align 8
  %32 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @ac97_ids_match(i32 %30, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %60

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %41 = call i32 @compat_ac97_reset(%struct.snd_ac97* %40)
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %43 = call i32 @compat_ac97_warm_reset(%struct.snd_ac97* %42)
  %44 = load %struct.ac97_controller*, %struct.ac97_controller** %11, align 8
  %45 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %10, align 8
  %46 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_ac97_bus_scan_one(%struct.ac97_controller* %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %10, align 8
  %51 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @ac97_ids_match(i32 %49, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %56, %37
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.ac97_codec_device* @to_ac97_device(i32) #1

declare dso_local i32 @compat_ac97_warm_reset(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_bus_scan_one(%struct.ac97_controller*, i32) #1

declare dso_local i64 @ac97_ids_match(i32, i32, i32) #1

declare dso_local i32 @compat_ac97_reset(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
