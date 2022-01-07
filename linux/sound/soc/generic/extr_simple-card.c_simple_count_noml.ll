; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_count_noml.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_count_noml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.device_node = type { i32 }
%struct.link_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*, %struct.device_node*, %struct.device_node*, %struct.link_info*, i32)* @simple_count_noml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_count_noml(%struct.asoc_simple_priv* %0, %struct.device_node* %1, %struct.device_node* %2, %struct.link_info* %3, i32 %4) #0 {
  %6 = alloca %struct.asoc_simple_priv*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.link_info*, align 8
  %10 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.link_info* %3, %struct.link_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.link_info*, %struct.link_info** %9, align 8
  %12 = getelementptr inbounds %struct.link_info, %struct.link_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = icmp ne %struct.device_node* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.link_info*, %struct.link_info** %9, align 8
  %20 = getelementptr inbounds %struct.link_info, %struct.link_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
