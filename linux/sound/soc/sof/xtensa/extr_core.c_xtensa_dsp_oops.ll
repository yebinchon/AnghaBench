; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/xtensa/extr_core.c_xtensa_dsp_oops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/xtensa/extr_core.c_xtensa_dsp_oops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.snd_sof_dev = type { i32 }
%struct.sof_ipc_dsp_oops_xtensa = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"error: DSP Firmware Oops\0A\00", align 1
@xtensa_exception_causes = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"error: Exception Cause: %s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"EXCCAUSE 0x%8.8x EXCVADDR 0x%8.8x PS       0x%8.8x SAR     0x%8.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"EPC1     0x%8.8x EPC2     0x%8.8x EPC3     0x%8.8x EPC4    0x%8.8x\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"EPC5     0x%8.8x EPC6     0x%8.8x EPC7     0x%8.8x DEPC    0x%8.8x\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"EPS2     0x%8.8x EPS3     0x%8.8x EPS4     0x%8.8x EPS5    0x%8.8x\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"EPS6     0x%8.8x EPS7     0x%8.8x INTENABL 0x%8.8x INTERRU 0x%8.8x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*, i8*)* @xtensa_dsp_oops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtensa_dsp_oops(%struct.snd_sof_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sof_ipc_dsp_oops_xtensa*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sof_ipc_dsp_oops_xtensa*
  store %struct.sof_ipc_dsp_oops_xtensa* %8, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, i8*, ...) @dev_err(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xtensa_exception_causes, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xtensa_exception_causes, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %26 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %18
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %31 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xtensa_exception_causes, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xtensa_exception_causes, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %29, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %52 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %55 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %58 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %57, i32 0, i32 19
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %61 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %60, i32 0, i32 18
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %64 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %63, i32 0, i32 17
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %68 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %71 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %74 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %73, i32 0, i32 16
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %77 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %80 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %79, i32 0, i32 14
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %84 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %87 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %90 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %93 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %96 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %88, i32 %91, i32 %94, i32 %97)
  %99 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %100 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %103 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %106 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %109 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %112 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %104, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %116 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %119 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %122 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %125 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_dsp_oops_xtensa** %5, align 8
  %128 = getelementptr inbounds %struct.sof_ipc_dsp_oops_xtensa, %struct.sof_ipc_dsp_oops_xtensa* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %120, i32 %123, i32 %126, i32 %129)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
