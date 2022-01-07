; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.asoc_simple_dai = type { i32, i64, i32, i32, i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"simple-card: set_sysclk error\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"simple-card: set_tdm_slot error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.asoc_simple_dai*)* @asoc_simple_init_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asoc_simple_init_dai(%struct.snd_soc_dai* %0, %struct.asoc_simple_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.asoc_simple_dai*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.asoc_simple_dai* %1, %struct.asoc_simple_dai** %5, align 8
  %7 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %8 = icmp ne %struct.asoc_simple_dai* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

10:                                               ; preds = %2
  %11 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %12 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %17 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %18 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %21 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %16, i32 0, i64 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ENOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %26, %15
  br label %38

38:                                               ; preds = %37, %10
  %39 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %40 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %45 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %46 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %49 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %52 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %5, align 8
  %55 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %44, i32 %47, i32 %50, i64 %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %43
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ENOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %60, %43
  br label %72

72:                                               ; preds = %71, %38
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %65, %31, %9
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
