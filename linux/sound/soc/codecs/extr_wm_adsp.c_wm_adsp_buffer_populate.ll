; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_populate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.wm_adsp_fw_caps* }
%struct.wm_adsp_fw_caps = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.wm_adsp_compr_buf = type { %struct.wm_adsp_buffer_region*, %struct.TYPE_4__* }
%struct.wm_adsp_buffer_region = type { i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@wm_adsp_fw = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"region=%d type=%d base=%08x off=%08x size=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp_compr_buf*)* @wm_adsp_buffer_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_buffer_populate(%struct.wm_adsp_compr_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp_compr_buf*, align 8
  %4 = alloca %struct.wm_adsp_fw_caps*, align 8
  %5 = alloca %struct.wm_adsp_buffer_region*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm_adsp_compr_buf* %0, %struct.wm_adsp_compr_buf** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wm_adsp_fw, align 8
  %10 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %11 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %16, align 8
  store %struct.wm_adsp_fw_caps* %17, %struct.wm_adsp_fw_caps** %4, align 8
  store i8* null, i8** %6, align 8
  %18 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %4, align 8
  %19 = getelementptr inbounds %struct.wm_adsp_fw_caps, %struct.wm_adsp_fw_caps* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.wm_adsp_buffer_region* @kcalloc(i32 %20, i32 32, i32 %21)
  %23 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %24 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %23, i32 0, i32 0
  store %struct.wm_adsp_buffer_region* %22, %struct.wm_adsp_buffer_region** %24, align 8
  %25 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %26 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %25, i32 0, i32 0
  %27 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %26, align 8
  %28 = icmp ne %struct.wm_adsp_buffer_region* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %113

32:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %109, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %4, align 8
  %36 = getelementptr inbounds %struct.wm_adsp_fw_caps, %struct.wm_adsp_fw_caps* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %112

39:                                               ; preds = %33
  %40 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %41 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %40, i32 0, i32 0
  %42 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %42, i64 %44
  store %struct.wm_adsp_buffer_region* %45, %struct.wm_adsp_buffer_region** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %48 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %4, align 8
  %50 = getelementptr inbounds %struct.wm_adsp_fw_caps, %struct.wm_adsp_fw_caps* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %58 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %60 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %4, align 8
  %61 = getelementptr inbounds %struct.wm_adsp_fw_caps, %struct.wm_adsp_fw_caps* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %69 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %68, i32 0, i32 0
  %70 = call i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf* %59, i32 %67, i8** %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %39
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %113

75:                                               ; preds = %39
  %76 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %77 = load %struct.wm_adsp_fw_caps*, %struct.wm_adsp_fw_caps** %4, align 8
  %78 = getelementptr inbounds %struct.wm_adsp_fw_caps, %struct.wm_adsp_fw_caps* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf* %76, i32 %84, i8** %6)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %113

90:                                               ; preds = %75
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %93 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %97 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %100 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %103 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.wm_adsp_buffer_region*, %struct.wm_adsp_buffer_region** %5, align 8
  %106 = getelementptr inbounds %struct.wm_adsp_buffer_region, %struct.wm_adsp_buffer_region* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @compr_dbg(%struct.wm_adsp_compr_buf* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98, i8* %101, i8* %104, i8* %107)
  br label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %33

112:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %88, %73, %29
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.wm_adsp_buffer_region* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @wm_adsp_buffer_read(%struct.wm_adsp_compr_buf*, i32, i8**) #1

declare dso_local i32 @compr_dbg(%struct.wm_adsp_compr_buf*, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
