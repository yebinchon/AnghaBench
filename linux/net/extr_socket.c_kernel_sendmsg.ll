; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32 }

@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sendmsg(%struct.socket* %0, %struct.msghdr* %1, %struct.kvec* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store %struct.kvec* %2, %struct.kvec** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  %13 = load i32, i32* @WRITE, align 4
  %14 = load %struct.kvec*, %struct.kvec** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @iov_iter_kvec(i32* %12, i32 %13, %struct.kvec* %14, i64 %15, i64 %16)
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %20 = call i32 @sock_sendmsg(%struct.socket* %18, %struct.msghdr* %19)
  ret i32 %20
}

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i64, i64) #1

declare dso_local i32 @sock_sendmsg(%struct.socket*, %struct.msghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
