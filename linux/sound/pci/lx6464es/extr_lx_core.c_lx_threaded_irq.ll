; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__*, %struct.lx_stream, %struct.lx_stream, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lx_stream = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"error handling async events\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"requesting audio transfer for capture\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot request new buffer for capture\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"requesting audio transfer for playback\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot request new buffer for playback\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_threaded_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lx_stream*, align 8
  %11 = alloca %struct.lx_stream*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.lx6464es*
  store %struct.lx6464es* %13, %struct.lx6464es** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %15 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %16 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lx_interrupt_handle_async_events(%struct.lx6464es* %14, i32 %17, i32* %8, i64* %6, i64* %7)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %33 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %32, i32 0, i32 2
  store %struct.lx_stream* %33, %struct.lx_stream** %10, align 8
  %34 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %35 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %41 = load %struct.lx_stream*, %struct.lx_stream** %10, align 8
  %42 = call i32 @lx_interrupt_request_new_buffer(%struct.lx6464es* %40, %struct.lx_stream* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %45, %31
  %53 = load %struct.lx_stream*, %struct.lx_stream** %10, align 8
  %54 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_pcm_period_elapsed(i32 %55)
  br label %57

57:                                               ; preds = %52, %28
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %62 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %61, i32 0, i32 1
  store %struct.lx_stream* %62, %struct.lx_stream** %11, align 8
  %63 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %64 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %70 = load %struct.lx_stream*, %struct.lx_stream** %11, align 8
  %71 = call i32 @lx_interrupt_request_new_buffer(%struct.lx6464es* %69, %struct.lx_stream* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %76 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74, %60
  %82 = load %struct.lx_stream*, %struct.lx_stream** %11, align 8
  %83 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snd_pcm_period_elapsed(i32 %84)
  br label %86

86:                                               ; preds = %81, %57
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @lx_interrupt_handle_async_events(%struct.lx6464es*, i32, i32*, i64*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_interrupt_request_new_buffer(%struct.lx6464es*, %struct.lx_stream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
