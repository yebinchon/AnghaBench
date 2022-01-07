; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_queue_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_queue_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_event = type { i32 }
%struct.tipc_topsrv = type { i32 }
%struct.outqueue_entry = type { i32, i32, i32 }
%struct.tipc_conn = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TIPC_SUBSCR_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_topsrv_queue_evt(%struct.net* %0, i32 %1, i64 %2, %struct.tipc_event* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tipc_event*, align 8
  %9 = alloca %struct.tipc_topsrv*, align 8
  %10 = alloca %struct.outqueue_entry*, align 8
  %11 = alloca %struct.tipc_conn*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.tipc_event* %3, %struct.tipc_event** %8, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = call %struct.tipc_topsrv* @tipc_topsrv(%struct.net* %12)
  store %struct.tipc_topsrv* %13, %struct.tipc_topsrv** %9, align 8
  %14 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.tipc_conn* @tipc_conn_lookup(%struct.tipc_topsrv* %14, i32 %15)
  store %struct.tipc_conn* %16, %struct.tipc_conn** %11, align 8
  %17 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %18 = icmp ne %struct.tipc_conn* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %65

20:                                               ; preds = %4
  %21 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %22 = call i32 @connected(%struct.tipc_conn* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %62

25:                                               ; preds = %20
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.outqueue_entry* @kmalloc(i32 12, i32 %26)
  store %struct.outqueue_entry* %27, %struct.outqueue_entry** %10, align 8
  %28 = load %struct.outqueue_entry*, %struct.outqueue_entry** %10, align 8
  %29 = icmp ne %struct.outqueue_entry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %62

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @TIPC_SUBSCR_TIMEOUT, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.outqueue_entry*, %struct.outqueue_entry** %10, align 8
  %37 = getelementptr inbounds %struct.outqueue_entry, %struct.outqueue_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.outqueue_entry*, %struct.outqueue_entry** %10, align 8
  %39 = getelementptr inbounds %struct.outqueue_entry, %struct.outqueue_entry* %38, i32 0, i32 2
  %40 = load %struct.tipc_event*, %struct.tipc_event** %8, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.tipc_event* %40, i32 4)
  %42 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %43 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.outqueue_entry*, %struct.outqueue_entry** %10, align 8
  %46 = getelementptr inbounds %struct.outqueue_entry, %struct.outqueue_entry* %45, i32 0, i32 1
  %47 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %48 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %47, i32 0, i32 2
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %51 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %9, align 8
  %54 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %57 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %56, i32 0, i32 0
  %58 = call i64 @queue_work(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %31
  br label %65

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61, %30, %24
  %63 = load %struct.tipc_conn*, %struct.tipc_conn** %11, align 8
  %64 = call i32 @conn_put(%struct.tipc_conn* %63)
  br label %65

65:                                               ; preds = %62, %60, %19
  ret void
}

declare dso_local %struct.tipc_topsrv* @tipc_topsrv(%struct.net*) #1

declare dso_local %struct.tipc_conn* @tipc_conn_lookup(%struct.tipc_topsrv*, i32) #1

declare dso_local i32 @connected(%struct.tipc_conn*) #1

declare dso_local %struct.outqueue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_event*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @conn_put(%struct.tipc_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
