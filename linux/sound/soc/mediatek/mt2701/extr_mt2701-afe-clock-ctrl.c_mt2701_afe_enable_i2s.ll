; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_i2s.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_i2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }
%struct.mt2701_i2s_path = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable ASRC clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable I2S clock %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2701_afe_enable_i2s(%struct.mtk_base_afe* %0, %struct.mt2701_i2s_path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mt2701_i2s_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %5, align 8
  store %struct.mt2701_i2s_path* %1, %struct.mt2701_i2s_path** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %10 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %24 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %42 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %39, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
