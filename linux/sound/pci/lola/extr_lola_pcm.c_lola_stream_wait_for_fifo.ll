; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_wait_for_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_stream_wait_for_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lola_stream = type { i32 }

@LOLA_DSD_STS_FIFORDY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FIFO not ready (stream %d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_stream*, i32)* @lola_stream_wait_for_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_stream_wait_for_fifo(%struct.lola* %0, %struct.lola_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca %struct.lola_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %5, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @LOLA_DSD_STS_FIFORDY, align 4
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i64 @msecs_to_jiffies(i32 200)
  %20 = add i64 %18, %19
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %39, %16
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.lola*, %struct.lola** %5, align 8
  %28 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %29 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STS, align 4
  %32 = call i32 @lola_dsd_read(%struct.lola* %27, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @LOLA_DSD_STS_FIFORDY, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %53

39:                                               ; preds = %26
  %40 = call i32 @msleep(i32 1)
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.lola*, %struct.lola** %5, align 8
  %43 = getelementptr inbounds %struct.lola, %struct.lola* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %48 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @lola_dsd_read(%struct.lola*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
