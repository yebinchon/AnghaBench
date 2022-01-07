; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_getport_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_getport_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32 }
%struct.rpcbind_args = type { i64, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, i64)* }

@EIO = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"RPC: %5u rpcb_getport_done(status %d, port %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @rpcb_getport_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcb_getport_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rpcbind_args*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rpcbind_args*
  store %struct.rpcbind_args* %9, %struct.rpcbind_args** %5, align 8
  %10 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %11 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 2
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %11, align 8
  store %struct.rpc_xprt* %12, %struct.rpc_xprt** %6, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EPROTONOSUPPORT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EPROTONOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.rpc_xprt*, i64)*, i32 (%struct.rpc_xprt*, i64)** %40, align 8
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %43 = call i32 %41(%struct.rpc_xprt* %42, i64 0)
  br label %73

44:                                               ; preds = %33
  %45 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %46 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.rpc_xprt*, i64)*, i32 (%struct.rpc_xprt*, i64)** %53, align 8
  %55 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %56 = call i32 %54(%struct.rpc_xprt* %55, i64 0)
  %57 = load i32, i32* @EACCES, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %72

59:                                               ; preds = %44
  %60 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %61 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.rpc_xprt*, i64)*, i32 (%struct.rpc_xprt*, i64)** %63, align 8
  %65 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %66 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %67 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 %64(%struct.rpc_xprt* %65, i64 %68)
  %70 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %71 = call i32 @xprt_set_bound(%struct.rpc_xprt* %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %59, %49
  br label %73

73:                                               ; preds = %72, %36
  %74 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %75 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %79 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.rpcbind_args*, %struct.rpcbind_args** %5, align 8
  %84 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local i32 @xprt_set_bound(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
