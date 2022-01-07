; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_set_channel_masks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_set_channel_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.axg_tdm_stream = type { i32, i64* }

@AXG_TDM_NUM_LANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"channel mask error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axg_tdm_formatter_set_channel_masks(%struct.regmap* %0, %struct.axg_tdm_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.axg_tdm_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.axg_tdm_stream* %1, %struct.axg_tdm_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %14 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @AXG_TDM_NUM_LANES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %21 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %22 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = call i32 @find_first_bit(i64* %10, i32 32)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %44, %20
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @find_next_bit(i64* %10, i32 32, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %29

48:                                               ; preds = %35
  %49 = load %struct.regmap*, %struct.regmap** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @regmap_write(%struct.regmap* %49, i32 %50, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %5, align 8
  %54 = call i64 @regmap_get_reg_stride(%struct.regmap* %53)
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i64 @regmap_get_reg_stride(%struct.regmap*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
