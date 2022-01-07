; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_daifmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_daifmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@PREFIX = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @axg_card_parse_daifmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_parse_daifmt(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = load i32, i32* @PREFIX, align 4
  %10 = call i32 @snd_soc_of_parse_daifmt(%struct.device_node* %8, i32 %9, %struct.device_node** %5, %struct.device_node** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = icmp eq %struct.device_node* %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17, %2
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = icmp eq %struct.device_node* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFM, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %51

36:                                               ; preds = %17
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = icmp eq %struct.device_node* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFS, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %32
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call i32 @of_node_put(%struct.device_node* %52)
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @snd_soc_of_parse_daifmt(%struct.device_node*, i32, %struct.device_node**, %struct.device_node**) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
