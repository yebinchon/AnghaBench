; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_plug.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_plug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.blk_plug* }
%struct.blk_plug = type { i32 }
%struct.request_queue = type { i32 }
%struct.bio = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_plug* (%struct.request_queue*, %struct.bio*)* @blk_mq_plug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_plug* @blk_mq_plug(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.blk_plug*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %7 = call i32 @blk_queue_is_zoned(%struct.request_queue* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = call i32 @bio_op(%struct.bio* %10)
  %12 = call i32 @op_is_write(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.blk_plug*, %struct.blk_plug** %16, align 8
  store %struct.blk_plug* %17, %struct.blk_plug** %3, align 8
  br label %19

18:                                               ; preds = %9
  store %struct.blk_plug* null, %struct.blk_plug** %3, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.blk_plug*, %struct.blk_plug** %3, align 8
  ret %struct.blk_plug* %20
}

declare dso_local i32 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
