; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { %struct.virtio_chan* }
%struct.virtio_chan = type { i32, i32, i64, i32*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.p9_req_t = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"9p debug: virtio request\0A\00", align 1
@REQ_STATUS_SENT = common dso_local global i32 0, align 4
@VIRTQUEUE_NUM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Retry virtio request\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"virtio rpc add_sgs returned failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"virtio request kicked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_virtio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_virtio_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.virtio_chan*, align 8
  %13 = alloca [2 x %struct.scatterlist*], align 16
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %14 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %15 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %14, i32 0, i32 0
  %16 = load %struct.virtio_chan*, %struct.virtio_chan** %15, align 8
  store %struct.virtio_chan* %16, %struct.virtio_chan** %12, align 8
  %17 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %18 = call i32 @p9_debug(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @REQ_STATUS_SENT, align 4
  %20 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %21 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %118, %2
  %23 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %24 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %28 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %27, i32 0, i32 4
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  %30 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %31 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %32 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %36 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pack_sg_list(%struct.scatterlist* %29, i32 0, i32 %30, i32 %34, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %22
  %43 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %44 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %43, i32 0, i32 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 %48
  store %struct.scatterlist* %45, %struct.scatterlist** %49, align 8
  br label %50

50:                                               ; preds = %42, %22
  %51 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %52 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %51, i32 0, i32 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %56 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %57 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %61 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pack_sg_list(%struct.scatterlist* %53, i32 %54, i32 %55, i32 %59, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %50
  %68 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %69 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %68, i32 0, i32 4
  %70 = load %struct.scatterlist*, %struct.scatterlist** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %70, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = add nsw i32 %74, %75
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 %78
  store %struct.scatterlist* %73, %struct.scatterlist** %79, align 8
  br label %80

80:                                               ; preds = %67, %50
  %81 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %82 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 0
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %88 = load i32, i32* @GFP_ATOMIC, align 4
  %89 = call i32 @virtqueue_add_sgs(i32 %83, %struct.scatterlist** %84, i32 %85, i32 %86, %struct.p9_req_t* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @ENOSPC, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %99 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %101 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %105 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %109 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @wait_event_killable(i32 %107, i64 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @ERESTARTSYS, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %97
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %141

118:                                              ; preds = %97
  %119 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %120 = call i32 @p9_debug(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %22

121:                                              ; preds = %92
  %122 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %123 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %122, i32 0, i32 0
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %127 = call i32 @p9_debug(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %141

130:                                              ; preds = %80
  %131 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %132 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @virtqueue_kick(i32 %133)
  %135 = load %struct.virtio_chan*, %struct.virtio_chan** %12, align 8
  %136 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %135, i32 0, i32 0
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %140 = call i32 @p9_debug(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %130, %121, %116
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pack_sg_list(%struct.scatterlist*, i32, i32, i32, i32) #1

declare dso_local i32 @virtqueue_add_sgs(i32, %struct.scatterlist**, i32, i32, %struct.p9_req_t*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_killable(i32, i64) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
