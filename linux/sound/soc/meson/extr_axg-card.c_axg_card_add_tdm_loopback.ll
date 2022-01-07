; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_add_tdm_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_add_tdm_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.snd_soc_dai_link*, i64 }
%struct.snd_soc_dai_link = type { i32, i32, i32, i32, %struct.snd_soc_dai_link_component*, i32, i32*, %struct.snd_soc_dai_link_component*, i64, i64 }
%struct.snd_soc_dai_link_component = type { i8*, i8*, i32 }
%struct.axg_card = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-lb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"TDM Loopback\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@axg_card_tdm_be_ops = common dso_local global i32 0, align 4
@axg_card_tdm_dai_lb_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, i32*)* @axg_card_add_tdm_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_add_tdm_loopback(%struct.snd_soc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.axg_card*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca %struct.snd_soc_dai_link_component*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %12 = call %struct.axg_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.axg_card* %12, %struct.axg_card** %6, align 8
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %15, i64 %18
  store %struct.snd_soc_dai_link* %19, %struct.snd_soc_dai_link** %7, align 8
  %20 = load %struct.axg_card*, %struct.axg_card** %6, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @axg_card_reallocate_links(%struct.axg_card* %20, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %137

30:                                               ; preds = %2
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 1
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i64 %37
  store %struct.snd_soc_dai_link* %38, %struct.snd_soc_dai_link** %8, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @kasprintf(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i32 0, i32 8
  store i64 %43, i64* %45, align 8
  %46 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %137

53:                                               ; preds = %30
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.snd_soc_dai_link_component* @devm_kzalloc(i32 %56, i32 48, i32 %57)
  store %struct.snd_soc_dai_link_component* %58, %struct.snd_soc_dai_link_component** %9, align 8
  %59 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %60 = icmp ne %struct.snd_soc_dai_link_component* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %137

64:                                               ; preds = %53
  %65 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %65, i64 0
  %67 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %67, i32 0, i32 4
  store %struct.snd_soc_dai_link_component* %66, %struct.snd_soc_dai_link_component** %68, align 8
  %69 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %69, i64 1
  %71 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %72 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %71, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %70, %struct.snd_soc_dai_link_component** %72, align 8
  %73 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %80, i32 0, i32 9
  store i64 %79, i64* %81, align 8
  %82 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %82, i32 0, i32 4
  %84 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %83, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %87, i32 0, i32 4
  %89 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %88, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 8
  %91 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %91, i32 0, i32 4
  %93 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %92, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %95, i32 0, i32 7
  %97 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %96, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %97, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %99, i32 0, i32 7
  %101 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %100, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %102, align 8
  %103 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %107, i32 0, i32 6
  store i32* @axg_card_tdm_be_ops, i32** %108, align 8
  %109 = load i32, i32* @axg_card_tdm_dai_lb_init, align 4
  %110 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %111 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.axg_card*, %struct.axg_card** %6, align 8
  %113 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.axg_card*, %struct.axg_card** %6, align 8
  %121 = getelementptr inbounds %struct.axg_card, %struct.axg_card* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %119, i32* %127, align 4
  %128 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %129 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %128, i32 0, i32 4
  %130 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %129, align 8
  %131 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @of_node_get(i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %64, %61, %50, %28
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.axg_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @axg_card_reallocate_links(%struct.axg_card*, i64) #1

declare dso_local i64 @kasprintf(i32, i8*, i64) #1

declare dso_local %struct.snd_soc_dai_link_component* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
