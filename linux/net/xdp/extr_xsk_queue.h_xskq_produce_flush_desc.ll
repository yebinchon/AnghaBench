; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_produce_flush_desc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_produce_flush_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xsk_queue*)* @xskq_produce_flush_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xskq_produce_flush_desc(%struct.xsk_queue* %0) #0 {
  %2 = alloca %struct.xsk_queue*, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %2, align 8
  %3 = call i32 (...) @smp_wmb()
  %4 = load %struct.xsk_queue*, %struct.xsk_queue** %2, align 8
  %5 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.xsk_queue*, %struct.xsk_queue** %2, align 8
  %8 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.xsk_queue*, %struct.xsk_queue** %2, align 8
  %10 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xsk_queue*, %struct.xsk_queue** %2, align 8
  %15 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @WRITE_ONCE(i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
