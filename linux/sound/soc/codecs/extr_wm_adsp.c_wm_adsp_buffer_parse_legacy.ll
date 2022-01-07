; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_parse_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_parse_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wm_adsp_alg_region = type { i64 }
%struct.wm_adsp_compr_buf = type { i64, i32 }

@WMFW_ADSP2_XM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No algorithm region found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WM_ADSP_ALG_XM_STRUCT_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@host_buf_ptr = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"legacy host_buf_ptr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp_buffer_parse_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_buffer_parse_legacy(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.wm_adsp_alg_region*, align 8
  %5 = alloca %struct.wm_adsp_compr_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %11 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %12 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %13 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %14 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.wm_adsp_alg_region* @wm_adsp_find_alg_region(%struct.wm_adsp* %11, i32 %12, i32 %15)
  store %struct.wm_adsp_alg_region* %16, %struct.wm_adsp_alg_region** %4, align 8
  %17 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %4, align 8
  %18 = icmp ne %struct.wm_adsp_alg_region* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %21 = call i32 @adsp_err(%struct.wm_adsp* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %26 = call %struct.wm_adsp_compr_buf* @wm_adsp_buffer_alloc(%struct.wm_adsp* %25)
  store %struct.wm_adsp_compr_buf* %26, %struct.wm_adsp_compr_buf** %5, align 8
  %27 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %28 = icmp ne %struct.wm_adsp_compr_buf* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %121

32:                                               ; preds = %24
  %33 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %34 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  store i64 %39, i64* %6, align 8
  %40 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %4, align 8
  %41 = getelementptr inbounds %struct.wm_adsp_alg_region, %struct.wm_adsp_alg_region* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @ALG_XM_FIELD(i64 %45)
  %47 = add nsw i64 %44, %46
  store i64 %47, i64* %7, align 8
  %48 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %49 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @wm_adsp_read_data_word(%struct.wm_adsp* %48, i32 %49, i64 %50, i64* %8)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %2, align 4
  br label %121

56:                                               ; preds = %32
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @WM_ADSP_ALG_XM_STRUCT_MAGIC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %121

63:                                               ; preds = %56
  %64 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %4, align 8
  %65 = getelementptr inbounds %struct.wm_adsp_alg_region, %struct.wm_adsp_alg_region* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @host_buf_ptr, align 8
  %70 = call i64 @ALG_XM_FIELD(i64 %69)
  %71 = add nsw i64 %68, %70
  store i64 %71, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %94, %63
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 5
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %77 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %80 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %79, i32 0, i32 0
  %81 = call i32 @wm_adsp_read_data_word(%struct.wm_adsp* %76, i32 %77, i64 %78, i64* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %2, align 4
  br label %121

86:                                               ; preds = %75
  %87 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %88 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  %93 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %72

97:                                               ; preds = %91, %72
  %98 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %99 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %121

105:                                              ; preds = %97
  %106 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %107 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %108 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %110 = call i32 @wm_adsp_buffer_populate(%struct.wm_adsp_compr_buf* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %121

115:                                              ; preds = %105
  %116 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %117 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %5, align 8
  %118 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @compr_dbg(%struct.wm_adsp_compr_buf* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %115, %113, %102, %84, %60, %54, %29, %19
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.wm_adsp_alg_region* @wm_adsp_find_alg_region(%struct.wm_adsp*, i32, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*) #1

declare dso_local %struct.wm_adsp_compr_buf* @wm_adsp_buffer_alloc(%struct.wm_adsp*) #1

declare dso_local i64 @ALG_XM_FIELD(i64) #1

declare dso_local i32 @wm_adsp_read_data_word(%struct.wm_adsp*, i32, i64, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wm_adsp_buffer_populate(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @compr_dbg(%struct.wm_adsp_compr_buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
