; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_dai_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_dai_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { %struct.device_node* }

@RSND_NODE_DAI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.rsnd_priv*, i32*)* @rsnd_dai_of_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @rsnd_dai_of_node(%struct.rsnd_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.rsnd_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %11 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = load i32, i32* @RSND_NODE_DAI, align 4
  %18 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %16, i32 %17)
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  %19 = load %struct.device_node*, %struct.device_node** %8, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %22, %struct.device_node** %9, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %24, %struct.device_node** %9, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %25, i32* null)
  store %struct.device_node* %26, %struct.device_node** %8, align 8
  %27 = load %struct.device_node*, %struct.device_node** %8, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %37

31:                                               ; preds = %29
  %32 = load i32*, i32** %5, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %36, %struct.device_node** %3, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %38
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i32) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
