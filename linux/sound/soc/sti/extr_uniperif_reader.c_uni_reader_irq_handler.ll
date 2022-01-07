; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { i64, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UNIPERIF_STATE_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"unexpected IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"FIFO error detected\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uni_reader_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_reader_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniperif*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uniperif*
  store %struct.uniperif* %10, %struct.uniperif** %6, align 8
  %11 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %12 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %15 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %21 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_pcm_stream_lock(i32 %22)
  %24 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %25 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNIPERIF_STATE_STOPPED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %31 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %57

34:                                               ; preds = %19
  %35 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %36 = call i32 @GET_UNIPERIF_ITS(%struct.uniperif* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @SET_UNIPERIF_ITS_BCLR(%struct.uniperif* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %42 = call i32 @UNIPERIF_ITS_FIFO_ERROR_MASK(%struct.uniperif* %41)
  %43 = and i32 %40, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %48 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %52 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_pcm_stop_xrun(i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %46, %34
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %59 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_pcm_stream_unlock(i32 %60)
  br label %62

62:                                               ; preds = %57, %18
  %63 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %64 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_pcm_stream_lock(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @GET_UNIPERIF_ITS(%struct.uniperif*) #1

declare dso_local i32 @SET_UNIPERIF_ITS_BCLR(%struct.uniperif*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UNIPERIF_ITS_FIFO_ERROR_MASK(%struct.uniperif*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i32) #1

declare dso_local i32 @snd_pcm_stream_unlock(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
