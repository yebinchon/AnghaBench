; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_init_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_init_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_pipe = type { i32*, i32, i32*, i32, i64, i32, i32, i32, i64, i64 }

@rpc_timeout_upcall_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_pipe*)* @init_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pipe(%struct.rpc_pipe* %0) #0 {
  %2 = alloca %struct.rpc_pipe*, align 8
  store %struct.rpc_pipe* %0, %struct.rpc_pipe** %2, align 8
  %3 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %3, i32 0, i32 9
  store i64 0, i64* %4, align 8
  %5 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %7, i32 0, i32 7
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %13, i32 0, i32 5
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %18, i32 0, i32 3
  %20 = load i32, i32* @rpc_timeout_upcall_queue, align 4
  %21 = call i32 @INIT_DELAYED_WORK(i32* %19, i32 %20)
  %22 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %25 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.rpc_pipe*, %struct.rpc_pipe** %2, align 8
  %28 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
