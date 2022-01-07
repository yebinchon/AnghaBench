; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_allocate_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_allocate_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }
%struct.audiopipe = type { i32, i32, i64*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocate_pipes: ch=%d int=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"allocate_pipes: channel already open\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@PIPE_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, %struct.audiopipe*, i32, i32)* @allocate_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_pipes(%struct.echoaudio* %0, %struct.audiopipe* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.audiopipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store %struct.audiopipe* %1, %struct.audiopipe** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %21 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = shl i32 1, %35
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %51 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %100

58:                                               ; preds = %42
  %59 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %74 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %79 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %82 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @PIPE_STATE_STOPPED, align 4
  %84 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %85 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %87 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %95 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %94, i32 0, i32 2
  store i64* %93, i64** %95, align 8
  %96 = load %struct.audiopipe*, %struct.audiopipe** %7, align 8
  %97 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %58, %49, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
