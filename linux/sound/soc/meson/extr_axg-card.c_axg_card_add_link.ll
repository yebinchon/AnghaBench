; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_soc_dai_link* }
%struct.snd_soc_dai_link = type { i32, i32*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@codec_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.device_node*, i32*)* @axg_card_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_add_link(%struct.snd_soc_card* %0, %struct.device_node* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca %struct.snd_soc_dai_link_component*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %13, i64 %16
  store %struct.snd_soc_dai_link* %17, %struct.snd_soc_dai_link** %8, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.snd_soc_dai_link_component* @devm_kzalloc(i32 %20, i32 8, i32 %21)
  store %struct.snd_soc_dai_link_component* %22, %struct.snd_soc_dai_link_component** %9, align 8
  %23 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %24 = icmp ne %struct.snd_soc_dai_link_component* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %30 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %30, i32 0, i32 2
  store %struct.snd_soc_dai_link_component* %29, %struct.snd_soc_dai_link_component** %31, align 8
  %32 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %36, i32 0, i32 2
  %38 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %37, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %38, i32 0, i32 0
  %40 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %40, i32 0, i32 2
  %42 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %41, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %42, i32 0, i32 1
  %44 = call i32 @axg_card_parse_dai(%struct.snd_soc_card* %34, %struct.device_node* %35, i32* %39, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %113

49:                                               ; preds = %28
  %50 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %50, i32 0, i32 2
  %52 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %51, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @axg_card_cpu_is_playback_fe(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %59 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = call i32 @axg_card_set_fe_link(%struct.snd_soc_card* %58, %struct.snd_soc_dai_link* %59, %struct.device_node* %60, i32 1)
  store i32 %61, i32* %10, align 4
  br label %81

62:                                               ; preds = %49
  %63 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %63, i32 0, i32 2
  %65 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %64, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @axg_card_cpu_is_capture_fe(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %72 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %73 = load %struct.device_node*, %struct.device_node** %6, align 8
  %74 = call i32 @axg_card_set_fe_link(%struct.snd_soc_card* %71, %struct.snd_soc_dai_link* %72, %struct.device_node* %73, i32 0)
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %77 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = call i32 @axg_card_set_be_link(%struct.snd_soc_card* %76, %struct.snd_soc_dai_link* %77, %struct.device_node* %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %113

86:                                               ; preds = %81
  %87 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %87, i32 0, i32 2
  %89 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %88, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @axg_card_cpu_is_tdm_iface(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %96 = load %struct.device_node*, %struct.device_node** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @axg_card_parse_tdm(%struct.snd_soc_card* %95, %struct.device_node* %96, i32* %97)
  store i32 %98, i32* %10, align 4
  br label %111

99:                                               ; preds = %86
  %100 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %100, i32 0, i32 2
  %102 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %101, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @axg_card_cpu_is_codec(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %109 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %108, i32 0, i32 1
  store i32* @codec_params, i32** %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  br label %111

111:                                              ; preds = %110, %94
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %84, %47, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.snd_soc_dai_link_component* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @axg_card_parse_dai(%struct.snd_soc_card*, %struct.device_node*, i32*, i32*) #1

declare dso_local i64 @axg_card_cpu_is_playback_fe(i32) #1

declare dso_local i32 @axg_card_set_fe_link(%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, i32) #1

declare dso_local i64 @axg_card_cpu_is_capture_fe(i32) #1

declare dso_local i32 @axg_card_set_be_link(%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*) #1

declare dso_local i64 @axg_card_cpu_is_tdm_iface(i32) #1

declare dso_local i32 @axg_card_parse_tdm(%struct.snd_soc_card*, %struct.device_node*, i32*) #1

declare dso_local i64 @axg_card_cpu_is_codec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
