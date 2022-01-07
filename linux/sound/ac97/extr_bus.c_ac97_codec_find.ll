; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_codec_find.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_codec_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec_device = type { i32 }
%struct.ac97_controller = type { %struct.ac97_codec_device** }

@AC97_BUS_MAX_CODECS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ac97_codec_device* (%struct.ac97_controller*, i32)* @ac97_codec_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ac97_codec_device* @ac97_codec_find(%struct.ac97_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.ac97_codec_device*, align 8
  %4 = alloca %struct.ac97_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.ac97_controller* %0, %struct.ac97_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AC97_BUS_MAX_CODECS, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ac97_codec_device* @ERR_PTR(i32 %11)
  store %struct.ac97_codec_device* %12, %struct.ac97_codec_device** %3, align 8
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.ac97_controller*, %struct.ac97_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %14, i32 0, i32 0
  %16 = load %struct.ac97_codec_device**, %struct.ac97_codec_device*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ac97_codec_device*, %struct.ac97_codec_device** %16, i64 %18
  %20 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %19, align 8
  store %struct.ac97_codec_device* %20, %struct.ac97_codec_device** %3, align 8
  br label %21

21:                                               ; preds = %13, %9
  %22 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  ret %struct.ac97_codec_device* %22
}

declare dso_local %struct.ac97_codec_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
