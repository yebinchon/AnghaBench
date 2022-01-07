; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.virtio_chan* }
%struct.virtio_chan = type { i32, i32, i32, i32, i32 }
%struct.p9_req_t = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c": request done\0A\00", align 1
@REQ_STATUS_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.virtio_chan*, %struct.virtio_chan** %11, align 8
  store %struct.virtio_chan* %12, %struct.virtio_chan** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %14 = call i32 @p9_debug(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %15, i32 0, i32 2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %47, %1
  %20 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.p9_req_t* @virtqueue_get_buf(i32 %22, i32* %4)
  store %struct.p9_req_t* %23, %struct.p9_req_t** %5, align 8
  %24 = icmp ne %struct.p9_req_t* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %32 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %39 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %42 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %45 = load i32, i32* @REQ_STATUS_RCVD, align 4
  %46 = call i32 @p9_client_cb(i32 %43, %struct.p9_req_t* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %50 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %57 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wake_up(i32 %58)
  br label %60

60:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.p9_req_t* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @p9_client_cb(i32, %struct.p9_req_t*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
