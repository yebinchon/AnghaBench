; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_read_sn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_read_sn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to read serial number\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Read serial number %08x %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @read_sn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sn(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %12
  %14 = call i64 @read_dsp(%struct.echoaudio* %10, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i32 %42, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %29, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @read_dsp(%struct.echoaudio*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
