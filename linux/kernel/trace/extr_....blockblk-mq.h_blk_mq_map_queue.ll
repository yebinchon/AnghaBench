; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_map_queue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_map_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.request_queue = type { i32 }
%struct.blk_mq_ctx = type { %struct.blk_mq_hw_ctx** }

@HCTX_TYPE_DEFAULT = common dso_local global i32 0, align 4
@REQ_HIPRI = common dso_local global i32 0, align 4
@HCTX_TYPE_POLL = common dso_local global i32 0, align 4
@REQ_OP_MASK = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@HCTX_TYPE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_hw_ctx* (%struct.request_queue*, i32, %struct.blk_mq_ctx*)* @blk_mq_map_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_hw_ctx* @blk_mq_map_queue(%struct.request_queue* %0, i32 %1, %struct.blk_mq_ctx* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.blk_mq_ctx* %2, %struct.blk_mq_ctx** %6, align 8
  %8 = load i32, i32* @HCTX_TYPE_DEFAULT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @REQ_HIPRI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @HCTX_TYPE_POLL, align 4
  store i32 %14, i32* %7, align 4
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @REQ_OP_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @REQ_OP_READ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @HCTX_TYPE_READ, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %15
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %25, i32 0, i32 0
  %27 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %27, i64 %29
  %31 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %30, align 8
  ret %struct.blk_mq_hw_ctx* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
