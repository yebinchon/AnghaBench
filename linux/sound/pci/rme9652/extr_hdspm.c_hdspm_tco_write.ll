; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_tco_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_tco_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@HDSPM_TCO2_set_input_MSB = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_input_LSB = common dso_local global i32 0, align 4
@HDSPM_TCO1_LTC_Format_LSB = common dso_local global i32 0, align 4
@HDSPM_TCO1_LTC_Format_MSB = common dso_local global i32 0, align 4
@HDSPM_TCO1_set_drop_frame_flag = common dso_local global i32 0, align 4
@HDSPM_TCO2_WCK_IO_ratio_LSB = common dso_local global i32 0, align 4
@HDSPM_TCO2_WCK_IO_ratio_MSB = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_freq = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_freq_from_app = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_pull_up = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_pull_down = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_01_4 = common dso_local global i32 0, align 4
@HDSPM_TCO2_set_term_75R = common dso_local global i32 0, align 4
@HDSPM_WR_TCO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdspm*)* @hdspm_tco_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspm_tco_write(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %4 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %6 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 0, label %10
    i32 1, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HDSPM_TCO2_set_input_MSB, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @HDSPM_TCO2_set_input_LSB, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %15, %10
  %22 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %23 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %60 [
    i32 1, label %27
    i32 2, label %32
    i32 3, label %37
    i32 4, label %44
    i32 5, label %51
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @HDSPM_TCO1_LTC_Format_LSB, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load i32, i32* @HDSPM_TCO1_LTC_Format_MSB, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %61

37:                                               ; preds = %21
  %38 = load i32, i32* @HDSPM_TCO1_LTC_Format_MSB, align 4
  %39 = load i32, i32* @HDSPM_TCO1_set_drop_frame_flag, align 4
  %40 = add i32 %38, %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %61

44:                                               ; preds = %21
  %45 = load i32, i32* @HDSPM_TCO1_LTC_Format_LSB, align 4
  %46 = load i32, i32* @HDSPM_TCO1_LTC_Format_MSB, align 4
  %47 = add i32 %45, %46
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %61

51:                                               ; preds = %21
  %52 = load i32, i32* @HDSPM_TCO1_LTC_Format_LSB, align 4
  %53 = load i32, i32* @HDSPM_TCO1_LTC_Format_MSB, align 4
  %54 = add i32 %52, %53
  %55 = load i32, i32* @HDSPM_TCO1_set_drop_frame_flag, align 4
  %56 = add i32 %54, %55
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %61

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %60, %51, %44, %37, %32, %27
  %62 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %63 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %77 [
    i32 1, label %67
    i32 2, label %72
  ]

67:                                               ; preds = %61
  %68 = load i32, i32* @HDSPM_TCO2_WCK_IO_ratio_LSB, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @HDSPM_TCO2_WCK_IO_ratio_MSB, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 8
  br label %78

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %72, %67
  %79 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %80 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %94 [
    i32 1, label %84
    i32 2, label %89
  ]

84:                                               ; preds = %78
  %85 = load i32, i32* @HDSPM_TCO2_set_freq, align 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 8
  br label %95

89:                                               ; preds = %78
  %90 = load i32, i32* @HDSPM_TCO2_set_freq_from_app, align 4
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %95

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %89, %84
  %96 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %97 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %125 [
    i32 1, label %101
    i32 2, label %106
    i32 3, label %111
    i32 4, label %118
  ]

101:                                              ; preds = %95
  %102 = load i32, i32* @HDSPM_TCO2_set_pull_up, align 4
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  br label %126

106:                                              ; preds = %95
  %107 = load i32, i32* @HDSPM_TCO2_set_pull_down, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 8
  br label %126

111:                                              ; preds = %95
  %112 = load i32, i32* @HDSPM_TCO2_set_pull_up, align 4
  %113 = load i32, i32* @HDSPM_TCO2_set_01_4, align 4
  %114 = add i32 %112, %113
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 8
  br label %126

118:                                              ; preds = %95
  %119 = load i32, i32* @HDSPM_TCO2_set_pull_down, align 4
  %120 = load i32, i32* @HDSPM_TCO2_set_01_4, align 4
  %121 = add i32 %119, %120
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 8
  br label %126

125:                                              ; preds = %95
  br label %126

126:                                              ; preds = %125, %118, %111, %106, %101
  %127 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %128 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 1, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @HDSPM_TCO2_set_term_75R, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %140 = load i64, i64* @HDSPM_WR_TCO, align 8
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = call i32 @hdspm_write(%struct.hdspm* %139, i64 %140, i32 %142)
  %144 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %145 = load i64, i64* @HDSPM_WR_TCO, align 8
  %146 = add nsw i64 %145, 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hdspm_write(%struct.hdspm* %144, i64 %146, i32 %148)
  %150 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %151 = load i64, i64* @HDSPM_WR_TCO, align 8
  %152 = add nsw i64 %151, 8
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @hdspm_write(%struct.hdspm* %150, i64 %152, i32 %154)
  %156 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %157 = load i64, i64* @HDSPM_WR_TCO, align 8
  %158 = add nsw i64 %157, 12
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @hdspm_write(%struct.hdspm* %156, i64 %158, i32 %160)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
