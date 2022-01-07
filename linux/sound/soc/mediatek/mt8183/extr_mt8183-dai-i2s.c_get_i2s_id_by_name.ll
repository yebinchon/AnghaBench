; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_get_i2s_id_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-dai-i2s.c_get_i2s_id_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"I2S0\00", align 1
@MT8183_DAI_I2S_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"I2S1\00", align 1
@MT8183_DAI_I2S_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"I2S2\00", align 1
@MT8183_DAI_I2S_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"I2S3\00", align 1
@MT8183_DAI_I2S_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"I2S5\00", align 1
@MT8183_DAI_I2S_5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, i8*)* @get_i2s_id_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_i2s_id_by_name(%struct.mtk_base_afe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i8*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strncmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MT8183_DAI_I2S_0, align 4
  store i32 %10, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @MT8183_DAI_I2S_1, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @MT8183_DAI_I2S_2, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @MT8183_DAI_I2S_3, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @MT8183_DAI_I2S_5, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %27, %21, %15, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
