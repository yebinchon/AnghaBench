; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7134.c_es7134_check_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7134.c_es7134_check_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.es7134_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.es7134_clock_mode* }
%struct.es7134_clock_mode = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"unsupported mclk_fs %u for rate %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unsupported rate: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.es7134_data*, i32)* @es7134_check_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7134_check_mclk(%struct.snd_soc_dai* %0, %struct.es7134_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.es7134_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.es7134_clock_mode*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.es7134_data* %1, %struct.es7134_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.es7134_data*, %struct.es7134_data** %6, align 8
  %13 = getelementptr inbounds %struct.es7134_data, %struct.es7134_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %77, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.es7134_data*, %struct.es7134_data** %6, align 8
  %20 = getelementptr inbounds %struct.es7134_data, %struct.es7134_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %17
  %26 = load %struct.es7134_data*, %struct.es7134_data** %6, align 8
  %27 = getelementptr inbounds %struct.es7134_data, %struct.es7134_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.es7134_clock_mode*, %struct.es7134_clock_mode** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.es7134_clock_mode, %struct.es7134_clock_mode* %30, i64 %32
  store %struct.es7134_clock_mode* %33, %struct.es7134_clock_mode** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.es7134_clock_mode*, %struct.es7134_clock_mode** %11, align 8
  %36 = getelementptr inbounds %struct.es7134_clock_mode, %struct.es7134_clock_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.es7134_clock_mode*, %struct.es7134_clock_mode** %11, align 8
  %42 = getelementptr inbounds %struct.es7134_clock_mode, %struct.es7134_clock_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %25
  br label %77

46:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.es7134_clock_mode*, %struct.es7134_clock_mode** %11, align 8
  %50 = getelementptr inbounds %struct.es7134_clock_mode, %struct.es7134_clock_mode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.es7134_clock_mode*, %struct.es7134_clock_mode** %11, align 8
  %55 = getelementptr inbounds %struct.es7134_clock_mode, %struct.es7134_clock_mode* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %88

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %88

77:                                               ; preds = %45
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %17

80:                                               ; preds = %17
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %68, %63
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
