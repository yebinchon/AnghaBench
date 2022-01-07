; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_update_avail.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_update_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp_compr_buf = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Avail check on unstarted stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"readindex=0x%x, writeindex=0x%x, avail=%d\0A\00", align 1
@WM_ADSP_DATA_WORD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp_compr_buf*)* @wm_adsp_buffer_update_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_buffer_update_avail(%struct.wm_adsp_compr_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp_compr_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm_adsp_compr_buf* %0, %struct.wm_adsp_compr_buf** %3, align 8
  %10 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %11 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @HOST_BUFFER_FIELD(i32 %16)
  %18 = call i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf* %15, i32 %17, i32* %4)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %74

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @sign_extend32(i32 %24, i32 23)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %30 = call i32 (%struct.wm_adsp_compr_buf*, i8*, ...) @compr_dbg(%struct.wm_adsp_compr_buf* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %34 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HOST_BUFFER_FIELD(i32 %37)
  %39 = call i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf* %36, i32 %38, i32* %5)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sign_extend32(i32 %45, i32 23)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %49 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %56 = call i64 @wm_adsp_buffer_size(%struct.wm_adsp_compr_buf* %55)
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %63 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %64 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @WM_ADSP_DATA_WORD_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i32 (%struct.wm_adsp_compr_buf*, i8*, ...) @compr_dbg(%struct.wm_adsp_compr_buf* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %73 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %42, %28, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf*, i32, i32*) #1

declare dso_local i32 @HOST_BUFFER_FIELD(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @compr_dbg(%struct.wm_adsp_compr_buf*, i8*, ...) #1

declare dso_local i64 @wm_adsp_buffer_size(%struct.wm_adsp_compr_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
