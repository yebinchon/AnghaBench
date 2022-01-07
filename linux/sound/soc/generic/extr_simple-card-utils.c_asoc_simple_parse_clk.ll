; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.asoc_simple_dai = type { i32, i8*, %struct.clk* }
%struct.clk = type { i32 }
%struct.snd_soc_dai_link_component = type { %struct.device_node* }

@.str = private unnamed_addr constant [23 x i8] c"system-clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"system-clock-direction-out\00", align 1
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_parse_clk(%struct.device* %0, %struct.device_node* %1, %struct.asoc_simple_dai* %2, %struct.snd_soc_dai_link_component* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.asoc_simple_dai*, align 8
  %8 = alloca %struct.snd_soc_dai_link_component*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.asoc_simple_dai* %2, %struct.asoc_simple_dai** %7, align 8
  store %struct.snd_soc_dai_link_component* %3, %struct.snd_soc_dai_link_component** %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call %struct.clk* @devm_get_clk_from_child(%struct.device* %11, %struct.device_node* %12, i32* null)
  store %struct.clk* %13, %struct.clk** %9, align 8
  %14 = load %struct.clk*, %struct.clk** %9, align 8
  %15 = call i32 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.clk*, %struct.clk** %9, align 8
  %19 = call i8* @clk_get_rate(%struct.clk* %18)
  %20 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %7, align 8
  %21 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.clk*, %struct.clk** %9, align 8
  %23 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %7, align 8
  %24 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %23, i32 0, i32 2
  store %struct.clk* %22, %struct.clk** %24, align 8
  br label %49

25:                                               ; preds = %4
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %10)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %7, align 8
  %32 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %48

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %35, i32 0, i32 0
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  %38 = call %struct.clk* @devm_get_clk_from_child(%struct.device* %34, %struct.device_node* %37, i32* null)
  store %struct.clk* %38, %struct.clk** %9, align 8
  %39 = load %struct.clk*, %struct.clk** %9, align 8
  %40 = call i32 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load %struct.clk*, %struct.clk** %9, align 8
  %44 = call i8* @clk_get_rate(%struct.clk* %43)
  %45 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %7, align 8
  %46 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %33
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i64 @of_property_read_bool(%struct.device_node* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %55 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %7, align 8
  %56 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  ret i32 0
}

declare dso_local %struct.clk* @devm_get_clk_from_child(%struct.device*, %struct.device_node*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i8* @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
