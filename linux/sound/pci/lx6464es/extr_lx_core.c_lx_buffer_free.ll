; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@CMD_11_CANCEL_BUFFER = common dso_local global i32 0, align 4
@MASK_BUFFER_ID = common dso_local global i32 0, align 4
@MASK_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_buffer_free(%struct.lx6464es* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %19 = load i32, i32* @CMD_11_CANCEL_BUFFER, align 4
  %20 = call i32 @lx_message_init(%struct.TYPE_3__* %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @MASK_BUFFER_ID, align 4
  %30 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %38 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 1
  %40 = call i32 @lx_message_send_atomic(%struct.lx6464es* %37, %struct.TYPE_3__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %4
  %44 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %45 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MASK_DATA_SIZE, align 4
  %51 = and i32 %49, %50
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %4
  %54 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %55 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
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
