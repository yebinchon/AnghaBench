; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_specific_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_specific_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nhlt_specific_cfg = type { i64, i64 }
%struct.device = type { i32 }
%struct.nhlt_fmt = type { i32, %struct.nhlt_fmt_cfg* }
%struct.nhlt_fmt_cfg = type { %struct.nhlt_specific_cfg, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wav_fmt }
%struct.wav_fmt = type { i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Format count =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ch=%d fmt=%d s_rate=%d\0A\00", align 1
@NHLT_LINK_DMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nhlt_specific_cfg* (%struct.device*, %struct.nhlt_fmt*, i64, i64, i64, i64)* @skl_get_specific_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nhlt_specific_cfg* @skl_get_specific_cfg(%struct.device* %0, %struct.nhlt_fmt* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.nhlt_specific_cfg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nhlt_fmt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nhlt_specific_cfg*, align 8
  %15 = alloca %struct.wav_fmt*, align 8
  %16 = alloca %struct.nhlt_fmt_cfg*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.nhlt_fmt* %1, %struct.nhlt_fmt** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %9, align 8
  %19 = getelementptr inbounds %struct.nhlt_fmt, %struct.nhlt_fmt* %18, i32 0, i32 1
  %20 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %19, align 8
  store %struct.nhlt_fmt_cfg* %20, %struct.nhlt_fmt_cfg** %16, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %9, align 8
  %23 = getelementptr inbounds %struct.nhlt_fmt, %struct.nhlt_fmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %87, %6
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %9, align 8
  %30 = getelementptr inbounds %struct.nhlt_fmt, %struct.nhlt_fmt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %27
  %34 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %16, align 8
  %35 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.wav_fmt* %36, %struct.wav_fmt** %15, align 8
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %39 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %42 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %45 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43, i64 %46)
  %48 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %49 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %33
  %54 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %55 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %16, align 8
  %61 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %60, i32 0, i32 0
  store %struct.nhlt_specific_cfg* %61, %struct.nhlt_specific_cfg** %14, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @NHLT_LINK_DMIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %14, align 8
  store %struct.nhlt_specific_cfg* %66, %struct.nhlt_specific_cfg** %7, align 8
  br label %91

67:                                               ; preds = %59
  %68 = load %struct.wav_fmt*, %struct.wav_fmt** %15, align 8
  %69 = getelementptr inbounds %struct.wav_fmt, %struct.wav_fmt* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %14, align 8
  store %struct.nhlt_specific_cfg* %74, %struct.nhlt_specific_cfg** %7, align 8
  br label %91

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %53, %33
  %77 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %16, align 8
  %78 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.nhlt_fmt_cfg*, %struct.nhlt_fmt_cfg** %16, align 8
  %82 = getelementptr inbounds %struct.nhlt_fmt_cfg, %struct.nhlt_fmt_cfg* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.nhlt_specific_cfg, %struct.nhlt_specific_cfg* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %80, %84
  %86 = inttoptr i64 %85 to %struct.nhlt_fmt_cfg*
  store %struct.nhlt_fmt_cfg* %86, %struct.nhlt_fmt_cfg** %16, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %27

90:                                               ; preds = %27
  store %struct.nhlt_specific_cfg* null, %struct.nhlt_specific_cfg** %7, align 8
  br label %91

91:                                               ; preds = %90, %73, %65
  %92 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %7, align 8
  ret %struct.nhlt_specific_cfg* %92
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
