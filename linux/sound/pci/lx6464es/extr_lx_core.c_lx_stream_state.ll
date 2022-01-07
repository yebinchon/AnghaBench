; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_stream_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_stream_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@CMD_0E_GET_STREAM_SPL_COUNT = common dso_local global i32 0, align 4
@SF_START = common dso_local global i32 0, align 4
@START_STATE = common dso_local global i32 0, align 4
@PAUSE_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_stream_state(%struct.lx6464es* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PIPE_INFO_TO_CMD(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 1
  %19 = load i32, i32* @CMD_0E_GET_STREAM_SPL_COUNT, align 4
  %20 = call i32 @lx_message_init(%struct.TYPE_3__* %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %30 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 1
  %32 = call i32 @lx_message_send_atomic(%struct.lx6464es* %29, %struct.TYPE_3__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %34 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SF_START, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @START_STATE, align 4
  br label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @PAUSE_STATE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %50 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
