; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_via_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_via_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_via_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_via_get_position(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  %13 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %14 = call %struct.TYPE_7__* @azx_stream(%struct.azx_dev* %13)
  %15 = call i32 @snd_hdac_stream_get_pos_lpib(%struct.TYPE_7__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %17 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %123

26:                                               ; preds = %2
  %27 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %28 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %34 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = urem i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %40 = call %struct.TYPE_7__* @azx_stream(%struct.azx_dev* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %45 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %26
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %123

53:                                               ; preds = %48
  %54 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %55 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %26
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %62 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %7, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %76 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = urem i32 %74, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %82 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = urem i32 %80, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub i32 %90, %91
  store i32 %92, i32* %8, align 4
  br label %119

93:                                               ; preds = %73
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp uge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %8, align 4
  br label %118

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub i32 %102, %103
  %105 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %106 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add i32 %104, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %112 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp uge i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %101
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118, %89
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %120, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %52, %24
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @snd_hdac_stream_get_pos_lpib(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @azx_stream(%struct.azx_dev*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
