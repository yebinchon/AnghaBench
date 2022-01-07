; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_channels(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 128
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %20
  %24 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %24, i32 0, i32 0
  %26 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %26, i64 %28
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %29, align 8
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %7, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %32 = icmp eq %struct.snd_pcm_substream* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %36, align 8
  store %struct.snd_pcm_runtime* %37, %struct.snd_pcm_runtime** %8, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %39 = call i32 @lock_params(%struct.snd_pcm_runtime* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %34
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %44
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %61 = call i32 @unlock_params(%struct.snd_pcm_runtime* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %67 = call i32 @snd_pcm_oss_get_channels(%struct.snd_pcm_oss_file* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %42, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @lock_params(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @unlock_params(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_oss_get_channels(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
