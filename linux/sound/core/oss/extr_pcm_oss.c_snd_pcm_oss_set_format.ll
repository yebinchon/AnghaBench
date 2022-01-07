; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AFMT_QUERY = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_format(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AFMT_QUERY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %2
  %15 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %16 = call i32 @snd_pcm_oss_get_formats(%struct.snd_pcm_oss_file* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @AFMT_U8, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %21
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %29
  %33 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %35, i64 %37
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %38, align 8
  store %struct.snd_pcm_substream* %39, %struct.snd_pcm_substream** %9, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %41 = icmp eq %struct.snd_pcm_substream* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %71

43:                                               ; preds = %32
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %45, align 8
  store %struct.snd_pcm_runtime* %46, %struct.snd_pcm_runtime** %10, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %48 = call i32 @lock_params(%struct.snd_pcm_runtime* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %78

53:                                               ; preds = %43
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %70 = call i32 @unlock_params(%struct.snd_pcm_runtime* %69)
  br label %71

71:                                               ; preds = %68, %42
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %29

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %77 = call i32 @snd_pcm_oss_get_format(%struct.snd_pcm_oss_file* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %51, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @snd_pcm_oss_get_formats(%struct.snd_pcm_oss_file*) #1

declare dso_local i32 @lock_params(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @unlock_params(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_oss_get_format(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
