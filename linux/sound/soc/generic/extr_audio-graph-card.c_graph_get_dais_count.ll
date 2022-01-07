; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_get_dais_count.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_get_dais_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.link_info = type { i32, i32, i32 }
%struct.device = type { i32 }

@graph_count_noml = common dso_local global i32 0, align 4
@graph_count_dpcm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"link %d, dais %d, ccnf %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asoc_simple_priv*, %struct.link_info*)* @graph_get_dais_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_get_dais_count(%struct.asoc_simple_priv* %0, %struct.link_info* %1) #0 {
  %3 = alloca %struct.asoc_simple_priv*, align 8
  %4 = alloca %struct.link_info*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %3, align 8
  store %struct.link_info* %1, %struct.link_info** %4, align 8
  %6 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %7 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %9 = load %struct.link_info*, %struct.link_info** %4, align 8
  %10 = load i32, i32* @graph_count_noml, align 4
  %11 = load i32, i32* @graph_count_dpcm, align 4
  %12 = call i32 @graph_for_each_link(%struct.asoc_simple_priv* %8, %struct.link_info* %9, i32 %10, i32 %11)
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.link_info*, %struct.link_info** %4, align 8
  %15 = getelementptr inbounds %struct.link_info, %struct.link_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.link_info*, %struct.link_info** %4, align 8
  %18 = getelementptr inbounds %struct.link_info, %struct.link_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.link_info*, %struct.link_info** %4, align 8
  %21 = getelementptr inbounds %struct.link_info, %struct.link_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  ret void
}

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local i32 @graph_for_each_link(%struct.asoc_simple_priv*, %struct.link_info*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
