; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_asoc_simple_parse_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_asoc_simple_parse_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.snd_soc_dai_link_component = type { i32, i32 }
%struct.of_phandle_args = type { i32, i32 }

@DAI = common dso_local global i32 0, align 4
@CELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.snd_soc_dai_link_component*, i32*)* @asoc_simple_parse_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_simple_parse_dai(%struct.device_node* %0, %struct.snd_soc_dai_link_component* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_dai_link_component*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.snd_soc_dai_link_component* %1, %struct.snd_soc_dai_link_component** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

13:                                               ; preds = %3
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = load i32, i32* @DAI, align 4
  %16 = load i32, i32* @CELL, align 4
  %17 = call i32 @of_parse_phandle_with_args(%struct.device_node* %14, i32 %15, i32 %16, i32 0, %struct.of_phandle_args* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %13
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %24, i32 0, i32 1
  %26 = call i32 @snd_soc_of_get_dai_name(%struct.device_node* %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %31
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %29, %20, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i32, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @snd_soc_of_get_dai_name(%struct.device_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
