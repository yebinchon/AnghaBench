; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.link_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PREFIX = common dso_local global i32 0, align 4
@simple_dai_link_of = common dso_local global i32 0, align 4
@simple_dai_link_of_dpcm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*)* @simple_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_parse_of(%struct.asoc_simple_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asoc_simple_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.link_info, align 4
  %8 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %3, align 8
  %9 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %10 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %15 = call %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv* %14)
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %23 = load i32, i32* @PREFIX, align 4
  %24 = call i32 @asoc_simple_parse_widgets(%struct.snd_soc_card* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %21
  %30 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %31 = load i32, i32* @PREFIX, align 4
  %32 = call i32 @asoc_simple_parse_routing(%struct.snd_soc_card* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %79

37:                                               ; preds = %29
  %38 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %39 = load i32, i32* @PREFIX, align 4
  %40 = call i32 @asoc_simple_parse_pin_switches(%struct.snd_soc_card* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %79

45:                                               ; preds = %37
  %46 = call i32 @memset(%struct.link_info* %7, i32 0, i32 4)
  %47 = getelementptr inbounds %struct.link_info, %struct.link_info* %7, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %62, %45
  %49 = getelementptr inbounds %struct.link_info, %struct.link_info* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %54 = load i32, i32* @simple_dai_link_of, align 4
  %55 = load i32, i32* @simple_dai_link_of_dpcm, align 4
  %56 = call i32 @simple_for_each_link(%struct.asoc_simple_priv* %53, %struct.link_info* %7, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.link_info, %struct.link_info* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %68 = load i32, i32* @PREFIX, align 4
  %69 = call i32 @asoc_simple_parse_card_name(%struct.snd_soc_card* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %66
  %75 = load %struct.device_node*, %struct.device_node** %5, align 8
  %76 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %3, align 8
  %77 = call i32 @simple_parse_aux_devs(%struct.device_node* %75, %struct.asoc_simple_priv* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %72, %59, %43, %35, %27, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv*) #1

declare dso_local i32 @asoc_simple_parse_widgets(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @asoc_simple_parse_routing(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @asoc_simple_parse_pin_switches(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @memset(%struct.link_info*, i32, i32) #1

declare dso_local i32 @simple_for_each_link(%struct.asoc_simple_priv*, %struct.link_info*, i32, i32) #1

declare dso_local i32 @asoc_simple_parse_card_name(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @simple_parse_aux_devs(%struct.device_node*, %struct.asoc_simple_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
