; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_recv_tcp_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_recv_tcp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.kvec = type { i64, i8* }
%struct.msghdr = type { i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i64)* @o2net_recv_tcp_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_recv_tcp_msg(%struct.socket* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvec, align 8
  %8 = alloca %struct.msghdr, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %15 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  %17 = load i32, i32* @READ, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @iov_iter_kvec(i32* %16, i32 %17, %struct.kvec* %7, i32 1, i64 %18)
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = call i32 @sock_recvmsg(%struct.socket* %20, %struct.msghdr* %8, i32 %21)
  ret i32 %22
}

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @sock_recvmsg(%struct.socket*, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
