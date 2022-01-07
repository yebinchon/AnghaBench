; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_pos_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_pos_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_cable = type { i32, i32, %struct.loopback_pcm** }
%struct.loopback_pcm = type { i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_cable*)* @loopback_pos_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_pos_update(%struct.loopback_cable* %0) #0 {
  %2 = alloca %struct.loopback_cable*, align 8
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca %struct.loopback_pcm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.loopback_cable* %0, %struct.loopback_cable** %2, align 8
  %10 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %11 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %10, i32 0, i32 2
  %12 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %12, i64 %13
  %15 = load %struct.loopback_pcm*, %struct.loopback_pcm** %14, align 8
  store %struct.loopback_pcm* %15, %struct.loopback_pcm** %3, align 8
  %16 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %17 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %16, i32 0, i32 2
  %18 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %18, i64 %19
  %21 = load %struct.loopback_pcm*, %struct.loopback_pcm** %20, align 8
  store %struct.loopback_pcm* %21, %struct.loopback_pcm** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %22 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %23 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %26 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %38 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %43 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %35, %1
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load i64, i64* @jiffies, align 8
  %55 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %56 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %61 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %53, %46
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %149

71:                                               ; preds = %67, %64
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @bytepos_delta(%struct.loopback_pcm* %76, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bytepos_finish(%struct.loopback_pcm* %81, i32 %82)
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %5, align 8
  br label %103

85:                                               ; preds = %71
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %5, align 8
  %93 = sub i64 %91, %92
  %94 = call i32 @bytepos_delta(%struct.loopback_pcm* %90, i64 %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @clear_capture_buf(%struct.loopback_pcm* %95, i32 %96)
  %98 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @bytepos_finish(%struct.loopback_pcm* %98, i32 %99)
  %101 = load i64, i64* %5, align 8
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %89, %85
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %149

110:                                              ; preds = %106, %103
  %111 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @bytepos_delta(%struct.loopback_pcm* %111, i64 %112)
  store i32 %113, i32* %8, align 4
  %114 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @bytepos_delta(%struct.loopback_pcm* %114, i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub i32 %121, %122
  %124 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %125 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %8, align 4
  br label %138

127:                                              ; preds = %110
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sub i32 %132, %133
  %135 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %136 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %131, %127
  br label %138

138:                                              ; preds = %137, %120
  %139 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %140 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @copy_play_buf(%struct.loopback_pcm* %139, %struct.loopback_pcm* %140, i32 %141)
  %143 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @bytepos_finish(%struct.loopback_pcm* %143, i32 %144)
  %146 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @bytepos_finish(%struct.loopback_pcm* %146, i32 %147)
  br label %149

149:                                              ; preds = %138, %109, %70
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @bytepos_delta(%struct.loopback_pcm*, i64) #1

declare dso_local i32 @bytepos_finish(%struct.loopback_pcm*, i32) #1

declare dso_local i32 @clear_capture_buf(%struct.loopback_pcm*, i32) #1

declare dso_local i32 @copy_play_buf(%struct.loopback_pcm*, %struct.loopback_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
