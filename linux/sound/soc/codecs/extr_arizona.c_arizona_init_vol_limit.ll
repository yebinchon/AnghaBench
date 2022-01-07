; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_vol_limit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_vol_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@ARIZONA_DAC_VOLUME_LIMIT_1L = common dso_local global i64 0, align 8
@ARIZONA_OUT1L_VOL_LIM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_vol_limit(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %42, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.arizona*, %struct.arizona** %2, align 8
  %7 = getelementptr inbounds %struct.arizona, %struct.arizona* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = call i32 @ARRAY_SIZE(i64* %9)
  %11 = icmp slt i32 %5, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load %struct.arizona*, %struct.arizona** %2, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %12
  %23 = load %struct.arizona*, %struct.arizona** %2, align 8
  %24 = getelementptr inbounds %struct.arizona, %struct.arizona* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @ARIZONA_DAC_VOLUME_LIMIT_1L, align 8
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* @ARIZONA_OUT1L_VOL_LIM_MASK, align 4
  %32 = load %struct.arizona*, %struct.arizona** %2, align 8
  %33 = getelementptr inbounds %struct.arizona, %struct.arizona* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @regmap_update_bits(i32 %25, i64 %30, i32 %31, i64 %39)
  br label %41

41:                                               ; preds = %22, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %4

45:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
