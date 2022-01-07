; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.link_info = type { i32 }

@graph_dai_link_of = common dso_local global i32 0, align 4
@graph_dai_link_of_dpcm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*)* @graph_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_parse_of(%struct.asoc_simple_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asoc_simple_priv*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.link_info, align 4
  %6 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %3, align 8
  %7 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %8 = call %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv* %7)
  store %struct.snd_soc_card* %8, %struct.snd_soc_card** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %10 = call i32 @asoc_simple_parse_widgets(%struct.snd_soc_card* %9, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %17 = call i32 @asoc_simple_parse_routing(%struct.snd_soc_card* %16, i32* null)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %15
  %23 = call i32 @memset(%struct.link_info* %5, i32 0, i32 4)
  %24 = getelementptr inbounds %struct.link_info, %struct.link_info* %5, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %39, %22
  %26 = getelementptr inbounds %struct.link_info, %struct.link_info* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %31 = load i32, i32* @graph_dai_link_of, align 4
  %32 = load i32, i32* @graph_dai_link_of_dpcm, align 4
  %33 = call i32 @graph_for_each_link(%struct.asoc_simple_priv* %30, %struct.link_info* %5, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.link_info, %struct.link_info* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %45 = call i32 @asoc_simple_parse_card_name(%struct.snd_soc_card* %44, i32* null)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %36, %20, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv*) #1

declare dso_local i32 @asoc_simple_parse_widgets(%struct.snd_soc_card*, i32*) #1

declare dso_local i32 @asoc_simple_parse_routing(%struct.snd_soc_card*, i32*) #1

declare dso_local i32 @memset(%struct.link_info*, i32, i32) #1

declare dso_local i32 @graph_for_each_link(%struct.asoc_simple_priv*, %struct.link_info*, i32, i32) #1

declare dso_local i32 @asoc_simple_parse_card_name(%struct.snd_soc_card*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
