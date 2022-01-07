; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_check_asic_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_layla20_dsp.c_check_asic_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSP_VC_TEST_ASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"check_asic_status: failed on read_dsp\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ASIC_ALREADY_LOADED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @check_asic_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_asic_status(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %7 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %8 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = load i32, i32* @DSP_VC_TEST_ASIC, align 4
  %15 = call i32 @send_vector(%struct.echoaudio* %13, i32 %14)
  %16 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %17 = call i64 @read_dsp(%struct.echoaudio* %16, i64* %4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %21 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %12
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @ASIC_ALREADY_LOADED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %47

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %9

44:                                               ; preds = %9
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %36, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i64 @read_dsp(%struct.echoaudio*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
