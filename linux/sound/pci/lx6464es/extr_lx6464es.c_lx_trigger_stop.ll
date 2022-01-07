; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_trigger_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lx_stream = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"stopping: stopping stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"couldn't stop stream\0A\00", align 1
@LX_STREAM_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lx6464es*, %struct.lx_stream*)* @lx_trigger_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_trigger_stop(%struct.lx6464es* %0, %struct.lx_stream* %1) #0 {
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca %struct.lx_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store %struct.lx_stream* %1, %struct.lx_stream** %4, align 8
  %7 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %8 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %11 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lx_stream_stop(%struct.lx6464es* %16, i32 0, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @LX_STREAM_STATUS_FREE, align 4
  %30 = load %struct.lx_stream*, %struct.lx_stream** %4, align 8
  %31 = getelementptr inbounds %struct.lx_stream, %struct.lx_stream* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %21
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_stream_stop(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
