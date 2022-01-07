; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_freq_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_tuner_freq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@HPI_TUNER_BAND_LAST = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_asihpi_tuner_freq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_tuner_freq_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @HPI_TUNER_BAND_LAST, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %24 = load i32, i32* @HPI_TUNER_BAND_LAST, align 4
  %25 = call i32 @asihpi_tuner_band_query(%struct.snd_kcontrol* %23, i32* %22, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i64, i64* @INT_MAX, align 8
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  store i64 %29, i64* %30, align 16
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %94, %2
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %22, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %47
  %49 = call i32 @hpi_tuner_query_frequency(i64 %40, i32 %41, i32 %45, i64* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %36

58:                                               ; preds = %36
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %60 = load i64, i64* %59, align 16
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %94

63:                                               ; preds = %58
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %71 = load i64, i64* %70, align 16
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 %71, i64* %72, align 16
  br label %73

73:                                               ; preds = %69, %63
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %85 = load i64, i64* %84, align 16
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %87 = load i64, i64* %86, align 16
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %91 = load i64, i64* %90, align 16
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  store i64 %91, i64* %92, align 16
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %62
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %31

97:                                               ; preds = %31
  %98 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %99 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %100 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %102 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %104 = load i64, i64* %103, align 16
  %105 = trunc i64 %104 to i32
  %106 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %107 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  %110 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %114 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  %118 = load i64, i64* %117, align 16
  %119 = trunc i64 %118 to i32
  %120 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %121 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %124

124:                                              ; preds = %97, %52
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @asihpi_tuner_band_query(%struct.snd_kcontrol*, i32*, i32) #2

declare dso_local i32 @hpi_tuner_query_frequency(i64, i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
