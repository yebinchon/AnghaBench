; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst*, %struct.rpc_xprt* }
%struct.rpc_rqst = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32*, %struct.rpc_xprt*, %struct.rpc_task* }
%struct.TYPE_4__ = type { i32*, i64, i64 }
%struct.TYPE_3__ = type { i32*, i64, i64 }
%struct.rpc_xprt = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC: %5u reserved req %p xid %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_request_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_request_init(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 2
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  store %struct.rpc_xprt* %7, %struct.rpc_xprt** %3, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 1
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %4, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %12, i32 0, i32 6
  store %struct.rpc_task* %11, %struct.rpc_task** %13, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 5
  store %struct.rpc_xprt* %14, %struct.rpc_xprt** %16, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = call i32 @xprt_alloc_xid(%struct.rpc_xprt* %19)
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = call i32 @xprt_init_connect_cookie(%struct.rpc_rqst* %23, %struct.rpc_xprt* %24)
  %26 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %47 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %48 = call i32 @xprt_init_majortimeo(%struct.rpc_task* %46, %struct.rpc_rqst* %47)
  %49 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %50 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %53 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %54 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ntohl(i32 %55)
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %51, %struct.rpc_rqst* %52, i32 %56)
  ret void
}

declare dso_local i32 @xprt_alloc_xid(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_init_connect_cookie(%struct.rpc_rqst*, %struct.rpc_xprt*) #1

declare dso_local i32 @xprt_init_majortimeo(%struct.rpc_task*, %struct.rpc_rqst*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_rqst*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
