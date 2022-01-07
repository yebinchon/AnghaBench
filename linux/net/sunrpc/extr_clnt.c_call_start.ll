; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, %struct.TYPE_7__, %struct.rpc_clnt* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rpc_clnt = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"RPC: %5u call_start %s%d proc %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@call_reserve = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_start(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 3
  %7 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  store %struct.rpc_clnt* %7, %struct.rpc_clnt** %3, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = call i32 @trace_rpc_request(%struct.rpc_task* %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = call i32 @rpc_proc_name(%struct.rpc_task* %27)
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = call i64 @RPC_IS_ASYNC(%struct.rpc_task* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i64 %26, i32 %28, i8* %33)
  %35 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %1
  %47 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %53 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %46, %1
  %65 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @call_reserve, align 4
  %72 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %73 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %75 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %76 = call i32 @rpc_task_set_transport(%struct.rpc_task* %74, %struct.rpc_clnt* %75)
  ret void
}

declare dso_local i32 @trace_rpc_request(%struct.rpc_task*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i32, i8*) #1

declare dso_local i32 @rpc_proc_name(%struct.rpc_task*) #1

declare dso_local i64 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @rpc_task_set_transport(%struct.rpc_task*, %struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
