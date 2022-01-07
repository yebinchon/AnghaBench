; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_find_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_find_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"find_free_channel: for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@ALI_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@ALI_SPDIF_IN_SUPPORT = common dso_local global i32 0, align 4
@ALI_SPDIF_IN_CHANNEL = common dso_local global i32 0, align 4
@ALI_PCM_IN_CHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"ali_find_free_channel: record channel is busy now.\0A\00", align 1
@ALI_SPDIF_OUT_CH_ENABLE = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CHANNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"ali_find_free_channel: S/PDIF out channel is in busy now.\0A\00", align 1
@ALI_CHANNELS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ali_find_free_channel: no free channels.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*, i32)* @snd_ali_find_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_find_free_channel(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ali*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %27 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %28 = call i32 @ALI_REG(%struct.snd_ali* %26, i32 %27)
  %29 = call i32 @inl(i32 %28)
  %30 = load i32, i32* @ALI_SPDIF_IN_SUPPORT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @ALI_SPDIF_IN_CHANNEL, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %25, %20
  %36 = load i32, i32* @ALI_PCM_IN_CHANNEL, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %106

45:                                               ; preds = %37
  %46 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

52:                                               ; preds = %2
  %53 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %59 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %60 = call i32 @ALI_REG(%struct.snd_ali* %58, i32 %59)
  %61 = call i32 @inl(i32 %60)
  %62 = load i32, i32* @ALI_SPDIF_OUT_CH_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load i32, i32* @ALI_SPDIF_OUT_CHANNEL, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %65
  %75 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %57, %52
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %96, %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @ALI_CHANNELS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %83

99:                                               ; preds = %83
  %100 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %101 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %93, %72, %45, %43
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_alloc_pcm_channel(%struct.snd_ali*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
