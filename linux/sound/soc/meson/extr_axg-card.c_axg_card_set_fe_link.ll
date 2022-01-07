; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_set_fe_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_set_fe_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai_link = type { i32, i32, i32, i32, i32, i32, i32, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, i32)* @axg_card_set_fe_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_set_fe_link(%struct.snd_soc_card* %0, %struct.snd_soc_dai_link* %1, %struct.device_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_dai_link_component*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %6, align 8
  store %struct.snd_soc_dai_link* %1, %struct.snd_soc_dai_link** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_soc_dai_link_component* @devm_kzalloc(i32 %13, i32 16, i32 %14)
  store %struct.snd_soc_dai_link_component* %15, %struct.snd_soc_dai_link_component** %10, align 8
  %16 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %17 = icmp ne %struct.snd_soc_dai_link_component* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %23 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %23, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %22, %struct.snd_soc_dai_link_component** %24, align 8
  %25 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i32 0, i32 4
  store i32 1, i32* %34, align 8
  %35 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %35, i32 0, i32 7
  %37 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %36, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %39, i32 0, i32 7
  %41 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %40, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %21
  %46 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %46, i32 0, i32 5
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %21
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i32 0, i32 6
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %53 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %54 = load %struct.device_node*, %struct.device_node** %8, align 8
  %55 = call i32 @axg_card_set_link_name(%struct.snd_soc_card* %52, %struct.snd_soc_dai_link* %53, %struct.device_node* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.snd_soc_dai_link_component* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @axg_card_set_link_name(%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
