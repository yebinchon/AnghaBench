; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_enable_io.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_enable_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"enable_io fifo_wait failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HDSP_inputEnable = common dso_local global i64 0, align 8
@HDSP_outputEnable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @snd_hdsp_enable_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_enable_io(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %5 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %6 = call i64 @hdsp_fifo_wait(%struct.hdsp* %5, i32 0, i32 100)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %10 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %21 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %26 = load i64, i64* @HDSP_inputEnable, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 4, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @hdsp_write(%struct.hdsp* %25, i64 %30, i32 1)
  %32 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %33 = load i64, i64* @HDSP_outputEnable, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @hdsp_write(%struct.hdsp* %32, i64 %37, i32 1)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %18

42:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @hdsp_fifo_wait(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
