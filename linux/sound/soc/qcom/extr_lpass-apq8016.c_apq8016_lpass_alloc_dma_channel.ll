; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-apq8016.c_apq8016_lpass_alloc_dma_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-apq8016.c_apq8016_lpass_alloc_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpass_data*, i32)* @apq8016_lpass_alloc_dma_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apq8016_lpass_alloc_dma_channel(%struct.lpass_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpass_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpass_variant*, align 8
  %7 = alloca i32, align 4
  store %struct.lpass_data* %0, %struct.lpass_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %9 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %8, i32 0, i32 1
  %10 = load %struct.lpass_variant*, %struct.lpass_variant** %9, align 8
  store %struct.lpass_variant* %10, %struct.lpass_variant** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %16 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %15, i32 0, i32 0
  %17 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %18 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @find_first_zero_bit(i32* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %23 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %14
  br label %57

30:                                               ; preds = %2
  %31 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %32 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %31, i32 0, i32 0
  %33 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %34 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %37 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %41 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @find_next_zero_bit(i32* %32, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %46 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lpass_variant*, %struct.lpass_variant** %6, align 8
  %49 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = icmp sge i32 %44, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %60 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %53, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @find_next_zero_bit(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
