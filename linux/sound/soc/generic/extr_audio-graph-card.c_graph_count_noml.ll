; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_count_noml.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_count_noml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.device_node = type { i32 }
%struct.link_info = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Count As Normal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*, %struct.device_node*, %struct.device_node*, %struct.link_info*)* @graph_count_noml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_count_noml(%struct.asoc_simple_priv* %0, %struct.device_node* %1, %struct.device_node* %2, %struct.link_info* %3) #0 {
  %5 = alloca %struct.asoc_simple_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.link_info*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  store %struct.link_info* %3, %struct.link_info** %8, align 8
  %10 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %5, align 8
  %11 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %10)
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.link_info*, %struct.link_info** %8, align 8
  %13 = getelementptr inbounds %struct.link_info, %struct.link_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.link_info*, %struct.link_info** %8, align 8
  %17 = getelementptr inbounds %struct.link_info, %struct.link_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %17, align 4
  %20 = load %struct.device*, %struct.device** %9, align 8
  %21 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
