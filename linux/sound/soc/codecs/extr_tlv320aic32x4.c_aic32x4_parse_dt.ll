; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic32x4_priv = type { i32, %struct.aic32x4_setup_data*, i32, i64, i32, i32 }
%struct.aic32x4_setup_data = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"aic32x4-gpio-func\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic32x4_priv*, %struct.device_node*)* @aic32x4_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_parse_dt(%struct.aic32x4_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aic32x4_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.aic32x4_setup_data*, align 8
  %7 = alloca i32, align 4
  store %struct.aic32x4_priv* %0, %struct.aic32x4_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %9 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.aic32x4_setup_data* @devm_kzalloc(i32 %10, i32 4, i32 %11)
  store %struct.aic32x4_setup_data* %12, %struct.aic32x4_setup_data** %6, align 8
  %13 = load %struct.aic32x4_setup_data*, %struct.aic32x4_setup_data** %6, align 8
  %14 = icmp ne %struct.aic32x4_setup_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_property_match_string(%struct.device_node* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @of_clk_get_parent_name(%struct.device_node* %27, i32 %28)
  %30 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %31 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %33 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %35 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 @of_get_named_gpio(%struct.device_node* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %38 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %39 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.aic32x4_setup_data*, %struct.aic32x4_setup_data** %6, align 8
  %42 = getelementptr inbounds %struct.aic32x4_setup_data, %struct.aic32x4_setup_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @of_property_read_u32_array(%struct.device_node* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 5)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %26
  %47 = load %struct.aic32x4_setup_data*, %struct.aic32x4_setup_data** %6, align 8
  %48 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %4, align 8
  %49 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %48, i32 0, i32 1
  store %struct.aic32x4_setup_data* %47, %struct.aic32x4_setup_data** %49, align 8
  br label %50

50:                                               ; preds = %46, %26
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %23, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.aic32x4_setup_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @of_clk_get_parent_name(%struct.device_node*, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
