; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_get_clock_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_get_clock_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CMD_01_GET_SYS_CFG = common dso_local global i32 0, align 4
@FREQ_FIELD_OFFSET = common dso_local global i32 0, align 4
@XES_FREQ_COUNT8_MASK = common dso_local global i32 0, align 4
@XES_FREQ_COUNT8_48_MAX = common dso_local global i32 0, align 4
@XES_FREQ_COUNT8_44_MIN = common dso_local global i32 0, align 4
@XES_FREQ_COUNT8_44_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_dsp_get_clock_frequency(%struct.lx6464es* %0, i32* %1) #0 {
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %10 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %13 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %12, i32 0, i32 2
  %14 = load i32, i32* @CMD_01_GET_SYS_CFG, align 4
  %15 = call i32 @lx_message_init(%struct.TYPE_3__* %13, i32 %14)
  %16 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %17 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 2
  %19 = call i64 @lx_message_send_atomic(%struct.lx6464es* %16, %struct.TYPE_3__* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FREQ_FIELD_OFFSET, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @XES_FREQ_COUNT8_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @XES_FREQ_COUNT8_48_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @XES_FREQ_COUNT8_44_MIN, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %22
  store i32 0, i32* %8, align 4
  br label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @XES_FREQ_COUNT8_44_MAX, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 44100, i32* %8, align 4
  br label %48

47:                                               ; preds = %42
  store i32 48000, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %52 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %56 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* %5, align 8
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
