; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendmsg_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendmsg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.msghdr*, i32)* }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32 }

@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sendmsg_locked(%struct.sock* %0, %struct.msghdr* %1, %struct.kvec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.socket*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store %struct.kvec* %2, %struct.kvec** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %12, align 8
  %16 = load %struct.socket*, %struct.socket** %12, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.sock*, %struct.msghdr*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.sock*, %struct.msghdr*, i32)* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @sock_no_sendmsg_locked(%struct.sock* %23, %struct.msghdr* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %5
  %28 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 0
  %30 = load i32, i32* @WRITE, align 4
  %31 = load %struct.kvec*, %struct.kvec** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @iov_iter_kvec(i32* %29, i32 %30, %struct.kvec* %31, i64 %32, i64 %33)
  %35 = load %struct.socket*, %struct.socket** %12, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*, %struct.msghdr*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i32)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %42 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %43 = call i32 @msg_data_left(%struct.msghdr* %42)
  %44 = call i32 %39(%struct.sock* %40, %struct.msghdr* %41, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %27, %22
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @sock_no_sendmsg_locked(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i64, i64) #1

declare dso_local i32 @msg_data_left(%struct.msghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
