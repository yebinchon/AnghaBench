; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_alloc_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_object.c_rxrpc_alloc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.rxrpc_net*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.rxrpc_net = type { i32 }
%struct.rxrpc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rxrpc_call_jar = common dso_local global i32 0, align 4
@RXRPC_RXTX_BUFF_SIZE = common dso_local global i64 0, align 8
@rxrpc_call_user_mutex_lock_class_key = common dso_local global i32 0, align 4
@rxrpc_call_timer_expired = common dso_local global i32 0, align 4
@rxrpc_process_call = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@rxrpc_rx_window_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_call* @rxrpc_alloc_call(%struct.rxrpc_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca %struct.rxrpc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.rxrpc_net*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %11 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %10, i32 0, i32 0
  %12 = call i32 @sock_net(%struct.TYPE_2__* %11)
  %13 = call %struct.rxrpc_net* @rxrpc_net(i32 %12)
  store %struct.rxrpc_net* %13, %struct.rxrpc_net** %9, align 8
  %14 = load i32, i32* @rxrpc_call_jar, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.rxrpc_call* @kmem_cache_zalloc(i32 %14, i32 %15)
  store %struct.rxrpc_call* %16, %struct.rxrpc_call** %8, align 8
  %17 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %18 = icmp ne %struct.rxrpc_call* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %4, align 8
  br label %141

20:                                               ; preds = %3
  %21 = load i64, i64* @RXRPC_RXTX_BUFF_SIZE, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @kcalloc(i64 %21, i32 8, i32 %22)
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %137

31:                                               ; preds = %20
  %32 = load i64, i64* @RXRPC_RXTX_BUFF_SIZE, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @kcalloc(i64 %32, i32 4, i32 %33)
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 26
  store i8* %34, i8** %36, align 8
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %38 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %37, i32 0, i32 26
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %132

42:                                               ; preds = %31
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 25
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %47 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %53 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %52, i32 0, i32 25
  %54 = call i32 @lockdep_set_class(i32* %53, i32* @rxrpc_call_user_mutex_lock_class_key)
  br label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %57 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %56, i32 0, i32 24
  %58 = load i32, i32* @rxrpc_call_timer_expired, align 4
  %59 = call i32 @timer_setup(i32* %57, i32 %58, i32 0)
  %60 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %61 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %60, i32 0, i32 23
  %62 = call i32 @INIT_WORK(i32* %61, i32* @rxrpc_process_call)
  %63 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %64 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %63, i32 0, i32 22
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %67 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %66, i32 0, i32 21
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %70 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %69, i32 0, i32 20
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 19
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %76 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %75, i32 0, i32 18
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %79 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %78, i32 0, i32 17
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %82 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %81, i32 0, i32 16
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %85 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %84, i32 0, i32 15
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %88 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %87, i32 0, i32 14
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %91 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %90, i32 0, i32 13
  %92 = call i32 @rwlock_init(i32* %91)
  %93 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %94 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %93, i32 0, i32 12
  %95 = call i32 @atomic_set(i32* %94, i32 1)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %98 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %100 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %99, i32 0, i32 1
  store i32 -1, i32* %100, align 4
  %101 = load i32, i32* @HZ, align 4
  %102 = mul nsw i32 20, %101
  %103 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %104 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @HZ, align 4
  %106 = mul nsw i32 1, %105
  %107 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %108 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %110 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %109, i32 0, i32 11
  %111 = call i32 @memset(i32* %110, i32 237, i32 4)
  %112 = load i32, i32* @rxrpc_rx_window_size, align 4
  %113 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %114 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 8
  %115 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %116 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %115, i32 0, i32 4
  store i32 16, i32* %116, align 8
  %117 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %118 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %117, i32 0, i32 5
  store i32 1, i32* %118, align 4
  %119 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %120 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %119, i32 0, i32 6
  store i32 2, i32* %120, align 8
  %121 = load i64, i64* @RXRPC_RXTX_BUFF_SIZE, align 8
  %122 = sub nsw i64 %121, 1
  %123 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %124 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %123, i32 0, i32 9
  store i64 %122, i64* %124, align 8
  %125 = load %struct.rxrpc_net*, %struct.rxrpc_net** %9, align 8
  %126 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %127 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %126, i32 0, i32 8
  store %struct.rxrpc_net* %125, %struct.rxrpc_net** %127, align 8
  %128 = load %struct.rxrpc_net*, %struct.rxrpc_net** %9, align 8
  %129 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %128, i32 0, i32 0
  %130 = call i32 @atomic_inc(i32* %129)
  %131 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  store %struct.rxrpc_call* %131, %struct.rxrpc_call** %4, align 8
  br label %141

132:                                              ; preds = %41
  %133 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %134 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %133, i32 0, i32 7
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @kfree(i8* %135)
  br label %137

137:                                              ; preds = %132, %30
  %138 = load i32, i32* @rxrpc_call_jar, align 4
  %139 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %140 = call i32 @kmem_cache_free(i32 %138, %struct.rxrpc_call* %139)
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %4, align 8
  br label %141

141:                                              ; preds = %137, %55, %19
  %142 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  ret %struct.rxrpc_call* %142
}

declare dso_local %struct.rxrpc_net* @rxrpc_net(i32) #1

declare dso_local i32 @sock_net(%struct.TYPE_2__*) #1

declare dso_local %struct.rxrpc_call* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
