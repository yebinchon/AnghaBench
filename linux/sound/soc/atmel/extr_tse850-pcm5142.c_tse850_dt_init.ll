; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_link = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }

@tse850_dailink = common dso_local global %struct.snd_soc_dai_link zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"only device tree supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"axentia,cpu-dai\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get cpu dai\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"axentia,audio-codec\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get codec info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tse850_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse850_dt_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store %struct.snd_soc_dai_link* @tse850_dailink, %struct.snd_soc_dai_link** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %22, %struct.device_node** %6, align 8
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.device_node* %32, %struct.device_node** %36, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.device_node* %37, %struct.device_node** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %45, %struct.device_node** %5, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = icmp ne %struct.device_node* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %31
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_8__* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %62

54:                                               ; preds = %31
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.device_node* %55, %struct.device_node** %59, align 8
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %54, %48, %25, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
