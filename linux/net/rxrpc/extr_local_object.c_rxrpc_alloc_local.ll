; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_alloc_local.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_local_object.c_rxrpc_alloc_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_local = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rxrpc_net*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rxrpc_net = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rxrpc_local_processor = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@rxrpc_debug_id = common dso_local global i32 0, align 4
@rxrpc_local_new = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rxrpc_local* (%struct.rxrpc_net*, %struct.sockaddr_rxrpc*)* @rxrpc_alloc_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rxrpc_local* @rxrpc_alloc_local(%struct.rxrpc_net* %0, %struct.sockaddr_rxrpc* %1) #0 {
  %3 = alloca %struct.rxrpc_net*, align 8
  %4 = alloca %struct.sockaddr_rxrpc*, align 8
  %5 = alloca %struct.rxrpc_local*, align 8
  store %struct.rxrpc_net* %0, %struct.rxrpc_net** %3, align 8
  store %struct.sockaddr_rxrpc* %1, %struct.sockaddr_rxrpc** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rxrpc_local* @kzalloc(i32 72, i32 %6)
  store %struct.rxrpc_local* %7, %struct.rxrpc_local** %5, align 8
  %8 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %9 = icmp ne %struct.rxrpc_local* %8, null
  br i1 %9, label %10, label %63

10:                                               ; preds = %2
  %11 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %12 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %11, i32 0, i32 13
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %15 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %14, i32 0, i32 12
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.rxrpc_net*, %struct.rxrpc_net** %3, align 8
  %18 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %19 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %18, i32 0, i32 11
  store %struct.rxrpc_net* %17, %struct.rxrpc_net** %19, align 8
  %20 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %21 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %24 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %23, i32 0, i32 9
  %25 = load i32, i32* @rxrpc_local_processor, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %28 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %27, i32 0, i32 8
  %29 = call i32 @init_rwsem(i32* %28)
  %30 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %30, i32 0, i32 7
  %32 = call i32 @skb_queue_head_init(i32* %31)
  %33 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %34 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %33, i32 0, i32 6
  %35 = call i32 @skb_queue_head_init(i32* %34)
  %36 = load i32, i32* @RB_ROOT, align 4
  %37 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %38 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %40 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %39, i32 0, i32 4
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %43 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %42, i32 0, i32 3
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %46 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %45, i32 0, i32 2
  %47 = call i32 @rwlock_init(i32* %46)
  %48 = call i32 @atomic_inc_return(i32* @rxrpc_debug_id)
  %49 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %50 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %52 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %51, i32 0, i32 1
  %53 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %4, align 8
  %54 = call i32 @memcpy(%struct.TYPE_2__* %52, %struct.sockaddr_rxrpc* %53, i32 4)
  %55 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %56 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %59 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @rxrpc_local_new, align 4
  %62 = call i32 @trace_rxrpc_local(i32 %60, i32 %61, i32 1, i32* null)
  br label %63

63:                                               ; preds = %10, %2
  %64 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  %65 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_local* %64)
  %66 = load %struct.rxrpc_local*, %struct.rxrpc_local** %5, align 8
  ret %struct.rxrpc_local* %66
}

declare dso_local %struct.rxrpc_local* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @trace_rxrpc_local(i32, i32, i32, i32*) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
