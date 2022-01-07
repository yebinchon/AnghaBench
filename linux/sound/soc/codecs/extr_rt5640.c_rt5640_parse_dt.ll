; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5640_priv = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"realtek,ldo1-en-gpios\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5640_priv*, %struct.device_node*)* @rt5640_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_parse_dt(%struct.rt5640_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt5640_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.rt5640_priv* %0, %struct.rt5640_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  %7 = call i32 @of_get_named_gpio(%struct.device_node* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load %struct.rt5640_priv*, %struct.rt5640_priv** %4, align 8
  %9 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rt5640_priv*, %struct.rt5640_priv** %4, align 8
  %11 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpio_is_valid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.rt5640_priv*, %struct.rt5640_priv** %4, align 8
  %17 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.rt5640_priv*, %struct.rt5640_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
