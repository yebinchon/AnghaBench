; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_wait_for_srst_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_wait_for_srst_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lola_stream = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CTL = common dso_local global i32 0, align 4
@LOLA_DSD_CTL_SRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SRST not clear (stream %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*, %struct.lola_stream*)* @wait_for_srst_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_srst_clear(%struct.lola* %0, %struct.lola_stream* %1) #0 {
  %3 = alloca %struct.lola*, align 8
  %4 = alloca %struct.lola_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %4, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 200)
  %9 = add i64 %7, %8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @time_before(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.lola*, %struct.lola** %3, align 8
  %17 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %18 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CTL, align 4
  %21 = call i32 @lola_dsd_read(%struct.lola* %16, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @LOLA_DSD_CTL_SRST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %39

27:                                               ; preds = %15
  %28 = call i32 @msleep(i32 1)
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.lola*, %struct.lola** %3, align 8
  %31 = getelementptr inbounds %struct.lola, %struct.lola* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lola_stream*, %struct.lola_stream** %4, align 8
  %36 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %29, %26
  ret void
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
