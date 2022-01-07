; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_set_link_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_set_link_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai_link = type { i8*, i8* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, i8*)* @axg_card_set_link_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_set_link_name(%struct.snd_soc_card* %0, %struct.snd_soc_dai_link* %1, %struct.device_node* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %6, align 8
  store %struct.snd_soc_dai_link* %1, %struct.snd_soc_dai_link** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @devm_kasprintf(i32 %13, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
