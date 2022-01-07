; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_write_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_write_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHI32_STATUS_REG = common dso_local global i32 0, align 4
@CHI32_STATUS_HOST_WRITE_EMPTY = common dso_local global i32 0, align 4
@CHI32_DATA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"write_dsp: Set bad_board to true\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @write_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dsp(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 10000000
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %13 = load i32, i32* @CHI32_STATUS_REG, align 4
  %14 = call i32 @get_dsp_register(%struct.echoaudio* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CHI32_STATUS_HOST_WRITE_EMPTY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %21 = load i32, i32* @CHI32_DATA_REG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @set_dsp_register(%struct.echoaudio* %20, i32 %21, i32 %22)
  %24 = call i32 (...) @wmb()
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %11
  %26 = call i32 @udelay(i32 1)
  %27 = call i32 (...) @cond_resched()
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @get_dsp_register(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_dsp_register(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
