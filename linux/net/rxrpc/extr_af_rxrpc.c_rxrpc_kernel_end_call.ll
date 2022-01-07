; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_end_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_kernel_end_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rxrpc_call = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d{%d}\00", align 1
@rxrpc_dummy_notify_rx = common dso_local global i64 0, align 8
@rxrpc_call_put_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_kernel_end_call(%struct.socket* %0, %struct.rxrpc_call* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.rxrpc_call*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %4, align 8
  %5 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %6 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %9 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %8, i32 0, i32 3
  %10 = call i32 @atomic_read(i32* %9)
  %11 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rxrpc_sk(i32 %17)
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %20 = call i32 @rxrpc_release_call(i32 %18, %struct.rxrpc_call* %19)
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load i64, i64* @rxrpc_dummy_notify_rx, align 8
  %30 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %31 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %33 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_bh(i32* %33)
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %40 = load i32, i32* @rxrpc_call_put_kernel, align 4
  %41 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %39, i32 %40)
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rxrpc_release_call(i32, %struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_sk(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
