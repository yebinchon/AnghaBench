; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_bulk_data = type { i8* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"madc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mdac\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bdiv\00", align 1
@__const.aic32x4_set_bias_level.clocks = private unnamed_addr constant [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0) }, %struct.clk_bulk_data { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.clk_bulk_data { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to enable clocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @aic32x4_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.clk_bulk_data], align 16
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [3 x %struct.clk_bulk_data]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x %struct.clk_bulk_data]* @__const.aic32x4_set_bias_level.clocks to i8*), i64 24, i1 false)
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(%struct.clk_bulk_data* %12)
  %14 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %15 = call i32 @devm_clk_bulk_get(i32 %11, i32 %13, %struct.clk_bulk_data* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %48 [
    i32 130, label %22
    i32 129, label %36
    i32 128, label %37
    i32 131, label %47
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(%struct.clk_bulk_data* %23)
  %25 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %26 = call i32 @clk_bulk_prepare_enable(i32 %24, %struct.clk_bulk_data* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %22
  br label %48

36:                                               ; preds = %20
  br label %48

37:                                               ; preds = %20
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %39 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %38)
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(%struct.clk_bulk_data* %43)
  %45 = getelementptr inbounds [3 x %struct.clk_bulk_data], [3 x %struct.clk_bulk_data]* %7, i64 0, i64 0
  %46 = call i32 @clk_bulk_disable_unprepare(i32 %44, %struct.clk_bulk_data* %45)
  br label %48

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %20, %47, %42, %41, %36, %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %29, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.clk_bulk_data*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.clk_bulk_data*) #2

declare dso_local i32 @clk_bulk_prepare_enable(i32, %struct.clk_bulk_data*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #2

declare dso_local i32 @clk_bulk_disable_unprepare(i32, %struct.clk_bulk_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
