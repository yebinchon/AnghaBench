; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_create_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_create_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.svc_serv = type { i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"svcrdma: failed to create new transport\0A\00", align 1
@svc_rdma_class = common dso_local global i32 0, align 4
@XPT_CONG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svcxprt_rdma* (%struct.svc_serv*, %struct.net*)* @svc_rdma_create_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svcxprt_rdma* @svc_rdma_create_xprt(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.svcxprt_rdma*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.svcxprt_rdma* @kzalloc(i32 48, i32 %7)
  store %struct.svcxprt_rdma* %8, %struct.svcxprt_rdma** %6, align 8
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %10 = icmp ne %struct.svcxprt_rdma* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.svcxprt_rdma* null, %struct.svcxprt_rdma** %3, align 8
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %16 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %15, i32 0, i32 0
  %17 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %18 = call i32 @svc_xprt_init(%struct.net* %14, i32* @svc_rdma_class, %struct.TYPE_2__* %16, %struct.svc_serv* %17)
  %19 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %20 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %19, i32 0, i32 11
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %23 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %22, i32 0, i32 10
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %26 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %25, i32 0, i32 9
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %29 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %28, i32 0, i32 8
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %32 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %31, i32 0, i32 7
  %33 = call i32 @init_llist_head(i32* %32)
  %34 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %35 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %34, i32 0, i32 6
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %38 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %37, i32 0, i32 5
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %41 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %40, i32 0, i32 4
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %44 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %43, i32 0, i32 3
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %47 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %50 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load i32, i32* @XPT_CONG_CTRL, align 4
  %53 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %54 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %52, i32* %55)
  %57 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  store %struct.svcxprt_rdma* %57, %struct.svcxprt_rdma** %3, align 8
  br label %58

58:                                               ; preds = %13, %11
  %59 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  ret %struct.svcxprt_rdma* %59
}

declare dso_local %struct.svcxprt_rdma* @kzalloc(i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @svc_xprt_init(%struct.net*, i32*, %struct.TYPE_2__*, %struct.svc_serv*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
