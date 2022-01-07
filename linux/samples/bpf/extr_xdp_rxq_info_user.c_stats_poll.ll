; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_poll.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_rxq_info_user.c_stats_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @stats_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_poll(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stats_record*, align 8
  %8 = alloca %struct.stats_record*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call %struct.stats_record* (...) @alloc_stats_record()
  store %struct.stats_record* %9, %struct.stats_record** %7, align 8
  %10 = call %struct.stats_record* (...) @alloc_stats_record()
  store %struct.stats_record* %10, %struct.stats_record** %8, align 8
  %11 = load %struct.stats_record*, %struct.stats_record** %7, align 8
  %12 = call i32 @stats_collect(%struct.stats_record* %11)
  br label %13

13:                                               ; preds = %3, %13
  %14 = call i32 @swap(%struct.stats_record** %8, %struct.stats_record** %7)
  %15 = load %struct.stats_record*, %struct.stats_record** %7, align 8
  %16 = call i32 @stats_collect(%struct.stats_record* %15)
  %17 = load %struct.stats_record*, %struct.stats_record** %7, align 8
  %18 = load %struct.stats_record*, %struct.stats_record** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @stats_print(%struct.stats_record* %17, %struct.stats_record* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sleep(i32 %22)
  br label %13
}

declare dso_local %struct.stats_record* @alloc_stats_record(...) #1

declare dso_local i32 @stats_collect(%struct.stats_record*) #1

declare dso_local i32 @swap(%struct.stats_record**, %struct.stats_record**) #1

declare dso_local i32 @stats_print(%struct.stats_record*, %struct.stats_record*, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
