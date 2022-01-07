; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_conn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i32* }

@CF_CONNECTED = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_conn*)* @tipc_conn_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_conn_close(%struct.tipc_conn* %0) #0 {
  %2 = alloca %struct.tipc_conn*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.tipc_conn* %0, %struct.tipc_conn** %2, align 8
  %5 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  %6 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  %13 = load i32, i32* @CF_CONNECTED, align 4
  %14 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  %15 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %14, i32 0, i32 1
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  %23 = call i32 @tipc_conn_delete_sub(%struct.tipc_conn* %22, i32* null)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call i32 @write_unlock_bh(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  %33 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* @SHUT_RDWR, align 4
  %36 = call i32 @kernel_sock_shutdown(%struct.TYPE_2__* %34, i32 %35)
  %37 = load %struct.tipc_conn*, %struct.tipc_conn** %2, align 8
  %38 = call i32 @conn_put(%struct.tipc_conn* %37)
  br label %39

39:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @tipc_conn_delete_sub(%struct.tipc_conn*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @conn_put(%struct.tipc_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
