; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_rcv_from_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_conn_rcv_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_conn = type { %struct.TYPE_2__*, %struct.tipc_topsrv* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.tipc_topsrv = type { i32 }
%struct.msghdr = type { i32, i32* }
%struct.tipc_subscr = type { i32 }
%struct.kvec = type { i32, %struct.tipc_subscr* }

@READ = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_conn*)* @tipc_conn_rcv_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_conn_rcv_from_sock(%struct.tipc_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_conn*, align 8
  %4 = alloca %struct.tipc_topsrv*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.tipc_subscr, align 4
  %8 = alloca %struct.kvec, align 8
  %9 = alloca i32, align 4
  store %struct.tipc_conn* %0, %struct.tipc_conn** %3, align 8
  %10 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %10, i32 0, i32 1
  %12 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %11, align 8
  store %struct.tipc_topsrv* %12, %struct.tipc_topsrv** %4, align 8
  %13 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %14 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %5, align 8
  %18 = bitcast %struct.msghdr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  store %struct.tipc_subscr* %7, %struct.tipc_subscr** %19, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %23 = load i32, i32* @READ, align 4
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iov_iter_kvec(i32* %22, i32 %23, %struct.kvec* %8, i32 1, i32 %25)
  %27 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_conn, %struct.tipc_conn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @MSG_DONTWAIT, align 4
  %31 = call i32 @sock_recvmsg(%struct.TYPE_2__* %29, %struct.msghdr* %6, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EWOULDBLOCK, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %1
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = call i32 @read_lock_bh(i32* %45)
  %47 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %4, align 8
  %48 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %49 = call i32 @tipc_conn_rcv_sub(%struct.tipc_topsrv* %47, %struct.tipc_conn* %48, %struct.tipc_subscr* %7)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = call i32 @read_unlock_bh(i32* %51)
  br label %53

53:                                               ; preds = %43, %39
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.tipc_conn*, %struct.tipc_conn** %3, align 8
  %58 = call i32 @tipc_conn_close(%struct.tipc_conn* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %36
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #2

declare dso_local i32 @sock_recvmsg(%struct.TYPE_2__*, %struct.msghdr*, i32) #2

declare dso_local i32 @read_lock_bh(i32*) #2

declare dso_local i32 @tipc_conn_rcv_sub(%struct.tipc_topsrv*, %struct.tipc_conn*, %struct.tipc_subscr*) #2

declare dso_local i32 @read_unlock_bh(i32*) #2

declare dso_local i32 @tipc_conn_close(%struct.tipc_conn*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
