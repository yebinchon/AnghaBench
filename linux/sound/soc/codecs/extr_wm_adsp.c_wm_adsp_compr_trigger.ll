; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_compr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wm_adsp_compr* }
%struct.wm_adsp_compr = type { i32, %struct.wm_adsp* }
%struct.wm_adsp = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Trigger: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to link buffer and stream: %d\0A\00", align 1
@high_water_mark = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to set high water mark: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp_compr_trigger(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm_adsp_compr*, align 8
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %11, align 8
  store %struct.wm_adsp_compr* %12, %struct.wm_adsp_compr** %5, align 8
  %13 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %14 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %13, i32 0, i32 1
  %15 = load %struct.wm_adsp*, %struct.wm_adsp** %14, align 8
  store %struct.wm_adsp* %15, %struct.wm_adsp** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @compr_dbg(%struct.wm_adsp_compr* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %20 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %71 [
    i32 129, label %23
    i32 128, label %61
  ]

23:                                               ; preds = %2
  %24 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %25 = call i32 @wm_adsp_compr_attached(%struct.wm_adsp_compr* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %29 = call i32 @wm_adsp_compr_attach(%struct.wm_adsp_compr* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @compr_err(%struct.wm_adsp_compr* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %74

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %39 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @wm_adsp_buffer_get_error(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %74

45:                                               ; preds = %37
  %46 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %47 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @high_water_mark, align 4
  %50 = call i32 @HOST_BUFFER_FIELD(i32 %49)
  %51 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %52 = call i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr* %51)
  %53 = call i32 @wm_adsp_buffer_write(i32 %48, i32 %50, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @compr_err(%struct.wm_adsp_compr* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %74

60:                                               ; preds = %45
  br label %74

61:                                               ; preds = %2
  %62 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %63 = call i32 @wm_adsp_compr_attached(%struct.wm_adsp_compr* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.wm_adsp_compr*, %struct.wm_adsp_compr** %5, align 8
  %67 = getelementptr inbounds %struct.wm_adsp_compr, %struct.wm_adsp_compr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wm_adsp_buffer_clear(i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  br label %74

71:                                               ; preds = %2
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %70, %60, %56, %44, %32
  %75 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %76 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @compr_dbg(%struct.wm_adsp_compr*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_adsp_compr_attached(%struct.wm_adsp_compr*) #1

declare dso_local i32 @wm_adsp_compr_attach(%struct.wm_adsp_compr*) #1

declare dso_local i32 @compr_err(%struct.wm_adsp_compr*, i8*, i32) #1

declare dso_local i32 @wm_adsp_buffer_get_error(i32) #1

declare dso_local i32 @wm_adsp_buffer_write(i32, i32, i32) #1

declare dso_local i32 @HOST_BUFFER_FIELD(i32) #1

declare dso_local i32 @wm_adsp_compr_frag_words(%struct.wm_adsp_compr*) #1

declare dso_local i32 @wm_adsp_buffer_clear(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
