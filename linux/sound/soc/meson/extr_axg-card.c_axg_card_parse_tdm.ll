; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_tdm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_tdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_soc_dai_link* }
%struct.snd_soc_dai_link = type { i64, %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.axg_card = type { %struct.axg_dai_link_tdm_data** }
%struct.axg_dai_link_tdm_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@axg_card_tdm_be_ops = common dso_local global i32 0, align 4
@axg_card_tdm_dai_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mclk-fs\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error parsing tdm link slots\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.device_node*, i32*)* @axg_card_parse_tdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_parse_tdm(%struct.snd_soc_card* %0, %struct.device_node* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.axg_card*, align 8
  %9 = alloca %struct.snd_soc_dai_link*, align 8
  %10 = alloca %struct.axg_dai_link_tdm_data*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %13 = call %struct.axg_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %12)
  store %struct.axg_card* %13, %struct.axg_card** %8, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %16, i64 %19
  store %struct.snd_soc_dai_link* %20, %struct.snd_soc_dai_link** %9, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.axg_dai_link_tdm_data* @devm_kzalloc(i32 %23, i32 4, i32 %24)
  store %struct.axg_dai_link_tdm_data* %25, %struct.axg_dai_link_tdm_data** %10, align 8
  %26 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %10, align 8
  %27 = icmp ne %struct.axg_dai_link_tdm_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %96

31:                                               ; preds = %3
  %32 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %10, align 8
  %33 = load %struct.axg_card*, %struct.axg_card** %8, align 8
  %34 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %33, i32 0, i32 0
  %35 = load %struct.axg_dai_link_tdm_data**, %struct.axg_dai_link_tdm_data*** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %35, i64 %38
  store %struct.axg_dai_link_tdm_data* %32, %struct.axg_dai_link_tdm_data** %39, align 8
  %40 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %40, i32 0, i32 4
  store i32* @axg_card_tdm_be_ops, i32** %41, align 8
  %42 = load i32, i32* @axg_card_tdm_dai_init, align 4
  %43 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @axg_card_parse_daifmt(%struct.device_node* %45, i32 %50)
  %52 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %10, align 8
  %56 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %55, i32 0, i32 0
  %57 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %56)
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %59 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %10, align 8
  %62 = call i32 @axg_card_parse_cpu_tdm_slots(%struct.snd_soc_card* %58, %struct.snd_soc_dai_link* %59, %struct.device_node* %60, %struct.axg_dai_link_tdm_data* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %31
  %66 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %67 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %96

71:                                               ; preds = %31
  %72 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %73 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %10, align 8
  %76 = call i32 @axg_card_parse_codecs_masks(%struct.snd_soc_card* %72, %struct.snd_soc_dai_link* %73, %struct.device_node* %74, %struct.axg_dai_link_tdm_data* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %96

81:                                               ; preds = %71
  %82 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @axg_card_add_tdm_loopback(%struct.snd_soc_card* %87, i32* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %81
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %79, %65, %28
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.axg_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.axg_dai_link_tdm_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @axg_card_parse_daifmt(%struct.device_node*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @axg_card_parse_cpu_tdm_slots(%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, %struct.axg_dai_link_tdm_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @axg_card_parse_codecs_masks(%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, %struct.axg_dai_link_tdm_data*) #1

declare dso_local i32 @axg_card_add_tdm_loopback(%struct.snd_soc_card*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
