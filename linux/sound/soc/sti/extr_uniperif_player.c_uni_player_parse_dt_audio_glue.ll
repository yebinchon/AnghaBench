; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_parse_dt_audio_glue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_parse_dt_audio_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uniperif = type { i8*, i8*, i32 }
%struct.regmap = type { i32 }
%struct.reg_field = type { i32 }

@SYS_CFG_AUDIO_GLUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"sti-audio-clk-glue syscf not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.uniperif*)* @uni_player_parse_dt_audio_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_player_parse_dt_audio_glue(%struct.platform_device* %0, %struct.uniperif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.uniperif*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca [2 x %struct.reg_field], align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.uniperif* %1, %struct.uniperif** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = getelementptr inbounds [2 x %struct.reg_field], [2 x %struct.reg_field]* %8, i64 0, i64 0
  %14 = load i32, i32* @SYS_CFG_AUDIO_GLUE, align 4
  %15 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %16 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 8, %17
  %19 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %20 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 8, %21
  %23 = call i32 @REG_FIELD(i32 %14, i32 %18, i32 %22)
  %24 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i64 1
  %26 = load i32, i32* @SYS_CFG_AUDIO_GLUE, align 4
  %27 = call i32 @REG_FIELD(i32 %26, i32 0, i32 1)
  %28 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %30, %struct.regmap** %7, align 8
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = call i64 @IS_ERR(%struct.regmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.regmap*, %struct.regmap** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %2
  %41 = load %struct.regmap*, %struct.regmap** %7, align 8
  %42 = getelementptr inbounds [2 x %struct.reg_field], [2 x %struct.reg_field]* %8, i64 0, i64 0
  %43 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @regmap_field_alloc(%struct.regmap* %41, i32 %44)
  %46 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %47 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.regmap*, %struct.regmap** %7, align 8
  %49 = getelementptr inbounds [2 x %struct.reg_field], [2 x %struct.reg_field]* %8, i64 0, i64 1
  %50 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @regmap_field_alloc(%struct.regmap* %48, i32 %51)
  %53 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %54 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @REG_FIELD(i32, i32, i32) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i8* @regmap_field_alloc(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
