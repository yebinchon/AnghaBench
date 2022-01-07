; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_parse_mclk_fs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_parse_mclk_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.simple_dai_props = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mclk-fs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.device_node*, %struct.simple_dai_props*)* @graph_parse_mclk_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_parse_mclk_fs(%struct.device_node* %0, %struct.device_node* %1, %struct.simple_dai_props* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.simple_dai_props*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.simple_dai_props* %2, %struct.simple_dai_props** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.device_node* @of_get_parent(%struct.device_node* %10)
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = call %struct.device_node* @of_get_parent(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_graph_get_port_parent(%struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %18 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %17, i32 0, i32 0
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %22 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %21, i32 0, i32 0
  %23 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %26 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %25, i32 0, i32 0
  %27 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %30 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %29, i32 0, i32 0
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  ret void
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
