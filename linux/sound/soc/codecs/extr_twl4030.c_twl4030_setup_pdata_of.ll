; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_setup_pdata_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_setup_pdata_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_codec_data = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ti,digimic_delay\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ti,ramp_delay_value\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ti,offset_cncl_path\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,hs_extmute\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ti,hs_extmute_gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_codec_data*, %struct.device_node*)* @twl4030_setup_pdata_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_setup_pdata_of(%struct.twl4030_codec_data* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.twl4030_codec_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.twl4030_codec_data* %0, %struct.twl4030_codec_data** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %6 = load %struct.device_node*, %struct.device_node** %4, align 8
  %7 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %8 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %7, i32 0, i32 0
  %9 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %12 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %11, i32 0, i32 1
  %13 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %16 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %15, i32 0, i32 2
  %17 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %24 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_get_named_gpio(%struct.device_node* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %28 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %29 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %31 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gpio_is_valid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %3, align 8
  %37 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %25
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
