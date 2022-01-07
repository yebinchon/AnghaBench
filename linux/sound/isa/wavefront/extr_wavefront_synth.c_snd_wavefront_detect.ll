; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_snd_wavefront_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_snd_wavefront_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i64, i64, i32, i64 }

@debug_default = common dso_local global i32 0, align 4
@WFC_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"firmware %d.%d already loaded.\0A\00", align 1
@WFC_HARDWARE_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not raw, but no hardware version!\0A\00", align 1
@wf_raw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"reloading firmware as you requested.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"no response to firmware probe, assume raw.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wavefront_detect(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @debug_default, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = load i32, i32* @WFC_FIRMWARE_VERSION, align 4
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %26 = call i64 @snd_wavefront_cmd(%struct.TYPE_5__* %22, i32 %23, i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %1
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %30, i8* %34, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %36, i8* %40, align 1
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i32, i32* @WFC_HARDWARE_VERSION, align 4
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %52 = call i64 @snd_wavefront_cmd(%struct.TYPE_5__* %48, i32 %49, i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %28
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %56, i8* %60, align 1
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %62, i8* %66, align 1
  br label %69

67:                                               ; preds = %28
  %68 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %83

69:                                               ; preds = %54
  %70 = load i32, i32* @wf_raw, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %83

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %73
  br label %82

78:                                               ; preds = %1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %77
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %72, %67
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @snd_wavefront_cmd(%struct.TYPE_5__*, i32, i8*, i8*) #1

declare dso_local i32 @snd_printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
