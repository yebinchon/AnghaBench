; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_spdif_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_spdif_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_spdifFrequencyMask = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@HDSP_spdifFrequencyMask_9632 = common dso_local global i32 0, align 4
@HDSP_SPDIFErrorFlag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unknown spdif frequency status; bits = 0x%x, status = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_spdif_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_spdif_sample_rate(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %6 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %7 = load i32, i32* @HDSP_statusRegister, align 4
  %8 = call i32 @hdsp_read(%struct.hdsp* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HDSP_spdifFrequencyMask, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %13 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @H9632, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HDSP_spdifFrequencyMask_9632, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @HDSP_SPDIFErrorFlag, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %69

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %59 [
    i32 133, label %29
    i32 132, label %30
    i32 131, label %31
    i32 130, label %32
    i32 129, label %33
    i32 128, label %34
    i32 136, label %35
    i32 135, label %43
    i32 134, label %51
  ]

29:                                               ; preds = %27
  store i32 32000, i32* %2, align 4
  br label %69

30:                                               ; preds = %27
  store i32 44100, i32* %2, align 4
  br label %69

31:                                               ; preds = %27
  store i32 48000, i32* %2, align 4
  br label %69

32:                                               ; preds = %27
  store i32 64000, i32* %2, align 4
  br label %69

33:                                               ; preds = %27
  store i32 88200, i32* %2, align 4
  br label %69

34:                                               ; preds = %27
  store i32 96000, i32* %2, align 4
  br label %69

35:                                               ; preds = %27
  %36 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %37 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @H9632, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 128000, i32* %2, align 4
  br label %69

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %27
  %44 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @H9632, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 176400, i32* %2, align 4
  br label %69

50:                                               ; preds = %43
  br label %60

51:                                               ; preds = %27
  %52 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %53 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @H9632, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 192000, i32* %2, align 4
  br label %69

58:                                               ; preds = %51
  br label %60

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59, %58, %50, %42
  %61 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %62 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %60, %57, %49, %41, %34, %33, %32, %31, %30, %29, %26
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
