; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_asoc_simple_parse_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_asoc_simple_parse_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.snd_soc_dai_link_component = type { %struct.device_node*, i32 }
%struct.of_phandle_args = type { i32, i32*, %struct.device_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.snd_soc_dai_link_component*, i32*)* @asoc_simple_parse_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_simple_parse_dai(%struct.device_node* %0, %struct.snd_soc_dai_link_component* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_dai_link_component*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.snd_soc_dai_link_component* %1, %struct.snd_soc_dai_link_component** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.device_node* @of_graph_get_port_parent(%struct.device_node* %15)
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 2
  store %struct.device_node* %17, %struct.device_node** %18, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @graph_get_dai_id(%struct.device_node* %19)
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call i32 @of_graph_get_endpoint_count(%struct.device_node* %24)
  %26 = icmp sgt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %29, i32 0, i32 1
  %31 = call i32 @snd_soc_get_dai_name(%struct.of_phandle_args* %9, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %14
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %38, i32 0, i32 0
  store %struct.device_node* %37, %struct.device_node** %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call i32 @of_graph_get_endpoint_count(%struct.device_node* %43)
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %34, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.device_node* @of_graph_get_port_parent(%struct.device_node*) #1

declare dso_local i32 @graph_get_dai_id(%struct.device_node*) #1

declare dso_local i32 @of_graph_get_endpoint_count(%struct.device_node*) #1

declare dso_local i32 @snd_soc_get_dai_name(%struct.of_phandle_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
