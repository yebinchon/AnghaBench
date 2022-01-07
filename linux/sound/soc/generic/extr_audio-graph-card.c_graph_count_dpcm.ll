; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_count_dpcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_count_dpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.device_node = type { i32 }
%struct.link_info = type { i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Count As DPCM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*, %struct.device_node*, %struct.device_node*, %struct.link_info*, i32)* @graph_count_dpcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_count_dpcm(%struct.asoc_simple_priv* %0, %struct.device_node* %1, %struct.device_node* %2, %struct.link_info* %3, i32 %4) #0 {
  %6 = alloca %struct.asoc_simple_priv*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.link_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.link_info* %3, %struct.link_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %13 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %12)
  store %struct.device* %13, %struct.device** %11, align 8
  %14 = load %struct.link_info*, %struct.link_info** %9, align 8
  %15 = getelementptr inbounds %struct.link_info, %struct.link_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.link_info*, %struct.link_info** %9, align 8
  %19 = getelementptr inbounds %struct.link_info, %struct.link_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %5
  %25 = load %struct.link_info*, %struct.link_info** %9, align 8
  %26 = getelementptr inbounds %struct.link_info, %struct.link_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.link_info*, %struct.link_info** %9, align 8
  %30 = getelementptr inbounds %struct.link_info, %struct.link_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.link_info*, %struct.link_info** %9, align 8
  %34 = getelementptr inbounds %struct.link_info, %struct.link_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %24, %5
  %38 = load %struct.device*, %struct.device** %11, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
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
