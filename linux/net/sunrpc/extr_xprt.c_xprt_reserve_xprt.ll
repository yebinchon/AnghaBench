; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_reserve_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_reserve_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, %struct.rpc_task*, i32 }
%struct.rpc_task = type { i32, i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32 }

@XPRT_LOCKED = common dso_local global i32 0, align 4
@XPRT_WRITE_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RPC: %5u failed to lock transport %p\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_reserve_xprt(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 2
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %6, align 8
  %10 = load i32, i32* @XPRT_LOCKED, align 4
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 2
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 1
  %19 = load %struct.rpc_task*, %struct.rpc_task** %18, align 8
  %20 = icmp eq %struct.rpc_task* %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %63

22:                                               ; preds = %15
  br label %37

23:                                               ; preds = %2
  %24 = load i32, i32* @XPRT_WRITE_SPACE, align 4
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 1
  store %struct.rpc_task* %31, %struct.rpc_task** %33, align 8
  store i32 1, i32* %3, align 4
  br label %63

34:                                               ; preds = %29
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %36 = call i32 @xprt_clear_locked(%struct.rpc_xprt* %35)
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.rpc_xprt* %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %46 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %48 = call i64 @RPC_IS_SOFT(%struct.rpc_task* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %51, i32 0, i32 0
  %53 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %54 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %55 = call i32 @xprt_request_timeout(%struct.rpc_rqst* %54)
  %56 = call i32 @rpc_sleep_on_timeout(i32* %52, %struct.rpc_task* %53, i32* null, i32 %55)
  br label %62

57:                                               ; preds = %37
  %58 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %59 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %58, i32 0, i32 0
  %60 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %61 = call i32 @rpc_sleep_on(i32* %59, %struct.rpc_task* %60, i32* null)
  br label %62

62:                                               ; preds = %57, %50
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %30, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @xprt_clear_locked(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*) #1

declare dso_local i64 @RPC_IS_SOFT(%struct.rpc_task*) #1

declare dso_local i32 @rpc_sleep_on_timeout(i32*, %struct.rpc_task*, i32*, i32) #1

declare dso_local i32 @xprt_request_timeout(%struct.rpc_rqst*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
