; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32, %struct.rpc_task*, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.rpc_rqst*)* }
%struct.rpc_task = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@RPC_TASK_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.rpc_task*)* @xprt_request_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xprt_request_transmit(%struct.rpc_rqst* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca %struct.rpc_task*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 4
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %12, align 8
  store %struct.rpc_xprt* %13, %struct.rpc_xprt** %6, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 3
  %16 = load %struct.rpc_task*, %struct.rpc_task** %15, align 8
  store %struct.rpc_task* %16, %struct.rpc_task** %7, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %18 = call i32 @RPC_WAS_SENT(%struct.rpc_task* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %2
  %24 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %25 = call i64 @xprt_request_data_received(%struct.rpc_task* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %152

28:                                               ; preds = %23
  %29 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %30 = call i64 @rpcauth_xmit_need_reencode(%struct.rpc_task* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBADMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %152

35:                                               ; preds = %28
  %36 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %37 = call i64 @RPC_SIGNALLED(%struct.rpc_task* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ERESTARTSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %152

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %51, i32 0, i32 6
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %54, align 8
  %56 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %57 = call i32 %55(%struct.rpc_rqst* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %43
  %61 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @trace_xprt_transmit(%struct.rpc_rqst* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %164

69:                                               ; preds = %43
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %74 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %72, %69
  %82 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %83 = call i32 @xprt_inject_disconnect(%struct.rpc_xprt* %82)
  %84 = load i32, i32* @RPC_TASK_SENT, align 4
  %85 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %86 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %89, i32 0, i32 2
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %93 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %98 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %102 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %100, %104
  %106 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %107 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %105
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  %113 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %114 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %118 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %116
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %125 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %129 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %127
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %136 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %140 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %138
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  %146 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %147 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %146, i32 0, i32 2
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %151 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %81, %39, %32, %27
  %153 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @trace_xprt_transmit(%struct.rpc_rqst* %153, i32 %154)
  %156 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %157 = call i32 @xprt_request_dequeue_transmit(%struct.rpc_task* %156)
  %158 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %159 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %158, i32 0, i32 1
  %160 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @rpc_wake_up_queued_task_set_status(%struct.TYPE_14__* %159, %struct.rpc_task* %160, i32 %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %152, %60
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @RPC_WAS_SENT(%struct.rpc_task*) #1

declare dso_local i64 @xprt_request_data_received(%struct.rpc_task*) #1

declare dso_local i64 @rpcauth_xmit_need_reencode(%struct.rpc_task*) #1

declare dso_local i64 @RPC_SIGNALLED(%struct.rpc_task*) #1

declare dso_local i32 @trace_xprt_transmit(%struct.rpc_rqst*, i32) #1

declare dso_local i32 @xprt_inject_disconnect(%struct.rpc_xprt*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xprt_request_dequeue_transmit(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wake_up_queued_task_set_status(%struct.TYPE_14__*, %struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
