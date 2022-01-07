; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wm_adsp_compr* }
%struct.wm_adsp_compr = type { i32, i32, %struct.wm_adsp_compr_buf*, %struct.wm_adsp* }
%struct.wm_adsp_compr_buf = type { i32, i64 }
%struct.wm_adsp = type { i32, i64 }
%struct.snd_compr_tstamp = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Pointer request\0A\00", align 1
@SNDRV_PCM_STATE_XRUN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error reading avail: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to re-enable buffer IRQ: %d\0A\00", align 1
@WM_ADSP_DATA_WORD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_compr_pointer(%struct.snd_compr_stream* %0, %struct.snd_compr_tstamp* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_tstamp*, align 8
  %5 = alloca %struct.wm_adsp_compr*, align 8
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca %struct.wm_adsp_compr_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_tstamp* %1, %struct.snd_compr_tstamp** %4, align 8
  %9 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %12, align 8
  store %struct.wm_adsp_compr* %13, %struct.wm_adsp_compr** %5, align 8
  %14 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %15 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %14, i32 0, i32 3
  %16 = load %struct.wm_adsp*, %struct.wm_adsp** %15, align 8
  store %struct.wm_adsp* %16, %struct.wm_adsp** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %18 = call i32 @compr_dbg(%struct.wm_adsp_compr* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %20 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %23 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %22, i32 0, i32 2
  %24 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %23, align 8
  store %struct.wm_adsp_compr_buf* %24, %struct.wm_adsp_compr_buf** %7, align 8
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %26 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %31 = icmp ne %struct.wm_adsp_compr_buf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %34 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %29, %2
  %38 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %39 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  %40 = call i32 @snd_compr_stop_error(%struct.snd_compr_stream* %38, i32 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %112

43:                                               ; preds = %32
  %44 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %45 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %48 = call i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %43
  %51 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %52 = call i32 @wm_adsp_buffer_update_avail(%struct.wm_adsp_compr_buf* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @compr_err(%struct.wm_adsp_compr* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %112

59:                                               ; preds = %50
  %60 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %61 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %64 = call i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %59
  %67 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %68 = call i32 @wm_adsp_buffer_get_error(%struct.wm_adsp_compr_buf* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %73 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %78 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  %79 = call i32 @snd_compr_stop_error(%struct.snd_compr_stream* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %112

81:                                               ; preds = %66
  %82 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %83 = call i32 @wm_adsp_buffer_reenable_irq(%struct.wm_adsp_compr_buf* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @compr_err(%struct.wm_adsp_compr* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %112

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %94 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %97 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %7, align 8
  %99 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WM_ADSP_DATA_WORD_SIZE, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %104 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %108 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %111 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %92, %86, %80, %55, %37
  %113 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %114 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @compr_dbg(%struct.wm_adsp_compr*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_compr_stop_error(%struct.snd_compr_stream*, i32) #1

declare dso_local i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr*) #1

declare dso_local i32 @wm_adsp_buffer_update_avail(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @compr_err(%struct.wm_adsp_compr*, i8*, i32) #1

declare dso_local i32 @wm_adsp_buffer_get_error(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @wm_adsp_buffer_reenable_irq(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
