; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_ch_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_ch_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i64*, %struct.snd_pcm_hw_constraint_list* }
%struct.snd_pcm_hw_constraint_list = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*, i32, i32)* @davinci_mcasp_ch_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_ch_constraint(%struct.davinci_mcasp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.davinci_mcasp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_hw_constraint_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %13 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %12, i32 0, i32 2
  %14 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %14, i64 %16
  store %struct.snd_pcm_hw_constraint_list* %17, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %18 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %23 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %26 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %4, align 8
  %35 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hweight32(i64 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %33, %3
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %43

57:                                               ; preds = %43
  store i32 2, i32* %10, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, %struct.snd_pcm_hw_constraint_list* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret i32 0
}

declare dso_local i32 @hweight32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
