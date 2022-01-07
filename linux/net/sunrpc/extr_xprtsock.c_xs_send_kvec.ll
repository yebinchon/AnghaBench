; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_kvec.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_kvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, %struct.kvec*, i64)* @xs_send_kvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_send_kvec(%struct.socket* %0, %struct.msghdr* %1, %struct.kvec* %2, i64 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store %struct.kvec* %2, %struct.kvec** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %11 = load i32, i32* @WRITE, align 4
  %12 = load %struct.kvec*, %struct.kvec** %7, align 8
  %13 = load %struct.kvec*, %struct.kvec** %7, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iov_iter_kvec(i32* %10, i32 %11, %struct.kvec* %12, i32 1, i32 %15)
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @xs_sendmsg(%struct.socket* %17, %struct.msghdr* %18, i64 %19)
  ret i32 %20
}

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @xs_sendmsg(%struct.socket*, %struct.msghdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
