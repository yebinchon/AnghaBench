; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_buffer = type { i32, i32 }
%struct.rpcrdma_req = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_buffer_put(%struct.rpcrdma_buffer* %0, %struct.rpcrdma_req* %1) #0 {
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca %struct.rpcrdma_req*, align 8
  store %struct.rpcrdma_buffer* %0, %struct.rpcrdma_buffer** %3, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %4, align 8
  %5 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %4, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %11 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %4, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @rpcrdma_rep_put(%struct.rpcrdma_buffer* %10, i32* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %4, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %4, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %21, i32 0, i32 0
  %23 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %23, i32 0, i32 1
  %25 = call i32 @list_add(i32* %22, i32* %24)
  %26 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local i32 @rpcrdma_rep_put(%struct.rpcrdma_buffer*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
