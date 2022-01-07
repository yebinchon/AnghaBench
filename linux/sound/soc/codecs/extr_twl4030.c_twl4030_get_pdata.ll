; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_codec_data = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.twl4030_codec_data* (%struct.snd_soc_component*)* @twl4030_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.twl4030_codec_data* @twl4030_get_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.twl4030_codec_data*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.twl4030_codec_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call %struct.twl4030_codec_data* @dev_get_platdata(%struct.TYPE_5__* %8)
  store %struct.twl4030_codec_data* %9, %struct.twl4030_codec_data** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %19 = icmp ne %struct.twl4030_codec_data* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.twl4030_codec_data* @devm_kzalloc(%struct.TYPE_5__* %26, i32 4, i32 %27)
  store %struct.twl4030_codec_data* %28, %struct.twl4030_codec_data** %4, align 8
  %29 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %30 = icmp ne %struct.twl4030_codec_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  store %struct.twl4030_codec_data* null, %struct.twl4030_codec_data** %2, align 8
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 @twl4030_setup_pdata_of(%struct.twl4030_codec_data* %35, %struct.device_node* %36)
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  br label %40

40:                                               ; preds = %34, %20, %1
  %41 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  store %struct.twl4030_codec_data* %41, %struct.twl4030_codec_data** %2, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %2, align 8
  ret %struct.twl4030_codec_data* %43
}

declare dso_local %struct.twl4030_codec_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local %struct.twl4030_codec_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @twl4030_setup_pdata_of(%struct.twl4030_codec_data*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
