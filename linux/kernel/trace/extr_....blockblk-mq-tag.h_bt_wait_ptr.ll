; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq-tag.h_bt_wait_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq-tag.h_bt_wait_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbq_wait_state = type { i32 }
%struct.sbitmap_queue = type { %struct.sbq_wait_state* }
%struct.blk_mq_hw_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbq_wait_state* (%struct.sbitmap_queue*, %struct.blk_mq_hw_ctx*)* @bt_wait_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* %0, %struct.blk_mq_hw_ctx* %1) #0 {
  %3 = alloca %struct.sbq_wait_state*, align 8
  %4 = alloca %struct.sbitmap_queue*, align 8
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  store %struct.sbitmap_queue* %0, %struct.sbitmap_queue** %4, align 8
  store %struct.blk_mq_hw_ctx* %1, %struct.blk_mq_hw_ctx** %5, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %7 = icmp ne %struct.blk_mq_hw_ctx* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %10 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %9, i32 0, i32 0
  %11 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %10, align 8
  %12 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %11, i64 0
  store %struct.sbq_wait_state* %12, %struct.sbq_wait_state** %3, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %4, align 8
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %15, i32 0, i32 0
  %17 = call %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* %14, i32* %16)
  store %struct.sbq_wait_state* %17, %struct.sbq_wait_state** %3, align 8
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %3, align 8
  ret %struct.sbq_wait_state* %19
}

declare dso_local %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
