; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_conn = type { i32, %struct.tipc_topsrv*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tipc_topsrv = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_conn_send_work = common dso_local global i32 0, align 4
@tipc_conn_recv_work = common dso_local global i32 0, align 4
@CF_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_conn* (%struct.tipc_topsrv*)* @tipc_conn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_conn* @tipc_conn_alloc(%struct.tipc_topsrv* %0) #0 {
  %2 = alloca %struct.tipc_conn*, align 8
  %3 = alloca %struct.tipc_topsrv*, align 8
  %4 = alloca %struct.tipc_conn*, align 8
  %5 = alloca i32, align 4
  store %struct.tipc_topsrv* %0, %struct.tipc_topsrv** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.tipc_conn* @kzalloc(i32 48, i32 %6)
  store %struct.tipc_conn* %7, %struct.tipc_conn** %4, align 8
  %8 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %9 = icmp ne %struct.tipc_conn* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.tipc_conn* @ERR_PTR(i32 %12)
  store %struct.tipc_conn* %13, %struct.tipc_conn** %2, align 8
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %16 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %15, i32 0, i32 9
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %19 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %18, i32 0, i32 8
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %22 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %21, i32 0, i32 7
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %24, i32 0, i32 6
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %28 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %27, i32 0, i32 5
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %31 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %30, i32 0, i32 4
  %32 = load i32, i32* @tipc_conn_send_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %35 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %34, i32 0, i32 3
  %36 = load i32, i32* @tipc_conn_recv_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %39 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %42 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %41, i32 0, i32 2
  %43 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @idr_alloc(i32* %42, %struct.tipc_conn* %43, i32 0, i32 0, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %14
  %49 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %50 = call i32 @kfree(%struct.tipc_conn* %49)
  %51 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %52 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.tipc_conn* @ERR_PTR(i32 %55)
  store %struct.tipc_conn* %56, %struct.tipc_conn** %2, align 8
  br label %76

57:                                               ; preds = %14
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %60 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %62 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %66 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32, i32* @CF_CONNECTED, align 4
  %69 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %70 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %69, i32 0, i32 2
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %73 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  %74 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %73, i32 0, i32 1
  store %struct.tipc_topsrv* %72, %struct.tipc_topsrv** %74, align 8
  %75 = load %struct.tipc_conn*, %struct.tipc_conn** %4, align 8
  store %struct.tipc_conn* %75, %struct.tipc_conn** %2, align 8
  br label %76

76:                                               ; preds = %57, %48, %10
  %77 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  ret %struct.tipc_conn* %77
}

declare dso_local %struct.tipc_conn* @kzalloc(i32, i32) #1

declare dso_local %struct.tipc_conn* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.tipc_conn*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tipc_conn*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
