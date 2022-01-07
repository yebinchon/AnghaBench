; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.snd_soc_dai_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }

@atmel_asoc_wm8904_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@atmel_asoc_wm8904_dailink = common dso_local global %struct.snd_soc_dai_link zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to init dt info\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to set SSC %d for audio\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"snd_soc_register_card failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_asoc_wm8904_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_asoc_wm8904_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_dai_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @atmel_asoc_wm8904_card, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_dai_link* @atmel_asoc_wm8904_dailink, %struct.snd_soc_dai_link** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @atmel_asoc_wm8904_dt_init(%struct.platform_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.device_node*
  %28 = call i32 @of_alias_get_id(%struct.device_node* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @atmel_ssc_set_audio(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %21
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %41 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @atmel_ssc_put_audio(i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %48, %33, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @atmel_asoc_wm8904_dt_init(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @atmel_ssc_set_audio(i32) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @atmel_ssc_put_audio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
