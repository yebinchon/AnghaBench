; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.tipc_conn* }
%struct.tipc_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tipc_conn_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_conn_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tipc_conn*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load %struct.tipc_conn*, %struct.tipc_conn** %8, align 8
  store %struct.tipc_conn* %9, %struct.tipc_conn** %3, align 8
  %10 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %11 = call i64 @connected(%struct.tipc_conn* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %15 = call i32 @conn_get(%struct.tipc_conn* %14)
  %16 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %17 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %22 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %21, i32 0, i32 0
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %27 = call i32 @conn_put(%struct.tipc_conn* %26)
  br label %28

28:                                               ; preds = %25, %13
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call i32 @read_unlock_bh(i32* %31)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @connected(%struct.tipc_conn*) #1

declare dso_local i32 @conn_get(%struct.tipc_conn*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @conn_put(%struct.tipc_conn*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
