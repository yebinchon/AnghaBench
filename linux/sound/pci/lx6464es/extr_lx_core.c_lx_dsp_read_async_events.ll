; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_read_async_events.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_read_async_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CMD_04_GET_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_dsp_read_async_events(%struct.lx6464es* %0, i32* %1) #0 {
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %7 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %10 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %9, i32 0, i32 1
  %11 = load i32, i32* @CMD_04_GET_EVENT, align 4
  %12 = call i32 @lx_message_init(%struct.TYPE_3__* %10, i32 %11)
  %13 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %14 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 9, i32* %15, align 4
  %16 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %17 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 1
  %19 = call i32 @lx_message_send_atomic(%struct.lx6464es* %16, %struct.TYPE_3__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %25 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %29 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i32* %23, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %22, %2
  %37 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %38 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
