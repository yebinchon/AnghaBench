; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_daifmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_parse_daifmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Revert to legacy daifmt parsing\0A\00", align 1
@SND_SOC_DAIFMT_CLOCK_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_parse_daifmt(%struct.device* %0, %struct.device_node* %1, %struct.device_node* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.device_node* null, %struct.device_node** %11, align 8
  store %struct.device_node* null, %struct.device_node** %12, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @snd_soc_of_parse_daifmt(%struct.device_node* %14, i8* %15, %struct.device_node** %11, %struct.device_node** %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %13, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %13, align 4
  %21 = load %struct.device_node*, %struct.device_node** %11, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %5
  %24 = load %struct.device_node*, %struct.device_node** %12, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = call i32 @snd_soc_of_parse_daifmt(%struct.device_node* %29, i8* null, %struct.device_node** null, %struct.device_node** null)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_CLOCK_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = or i32 %30, %34
  store i32 %35, i32* %13, align 4
  br label %65

36:                                               ; preds = %23, %5
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = load %struct.device_node*, %struct.device_node** %11, align 8
  %39 = icmp eq %struct.device_node* %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.device_node*, %struct.device_node** %8, align 8
  %42 = load %struct.device_node*, %struct.device_node** %12, align 8
  %43 = icmp eq %struct.device_node* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFS, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %64

52:                                               ; preds = %36
  %53 = load %struct.device_node*, %struct.device_node** %8, align 8
  %54 = load %struct.device_node*, %struct.device_node** %12, align 8
  %55 = icmp eq %struct.device_node* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFM, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %48
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.device_node*, %struct.device_node** %11, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load %struct.device_node*, %struct.device_node** %12, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_of_parse_daifmt(%struct.device_node*, i8*, %struct.device_node**, %struct.device_node**) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
