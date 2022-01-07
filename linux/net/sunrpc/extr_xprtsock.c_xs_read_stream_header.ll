; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_xprt*, %struct.msghdr*, i32, i64, i64)* @xs_read_stream_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_read_stream_header(%struct.sock_xprt* %0, %struct.msghdr* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sock_xprt*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.kvec, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %15 = load %struct.sock_xprt*, %struct.sock_xprt** %6, align 8
  %16 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %17, i32** %14, align 8
  %18 = load %struct.sock_xprt*, %struct.sock_xprt** %6, align 8
  %19 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @xs_read_kvec(i32 %20, %struct.msghdr* %21, i32 %22, %struct.kvec* %11, i64 %23, i64 %24)
  ret i32 %25
}

declare dso_local i32 @xs_read_kvec(i32, %struct.msghdr*, i32, %struct.kvec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
