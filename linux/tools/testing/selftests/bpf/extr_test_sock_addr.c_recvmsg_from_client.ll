; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_recvmsg_from_client.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_recvmsg_from_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.msghdr = type { i8*, i32, i32, i32, %struct.msghdr*, %struct.sockaddr_storage* }
%struct.iovec = type { i8*, i32, i32, i32, %struct.iovec*, %struct.sockaddr_storage* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_storage*)* @recvmsg_from_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvmsg_from_client(i32 %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %11 = call i32 @FD_ZERO(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FD_SET(i32 %12, i32* %10)
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i64 @select(i32 %17, i32* %10, i32* null, i32* null, %struct.timeval* %6)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @FD_ISSET(i32 %21, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %2
  store i32 -1, i32* %3, align 4
  br label %40

25:                                               ; preds = %20
  %26 = bitcast %struct.iovec* %8 to %struct.msghdr*
  %27 = call i32 @memset(%struct.msghdr* %26, i32 0, i32 40)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 64, i32* %30, align 8
  %31 = call i32 @memset(%struct.msghdr* %7, i32 0, i32 40)
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store %struct.sockaddr_storage* %32, %struct.sockaddr_storage** %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i32 4, i32* %34, align 4
  %35 = bitcast %struct.iovec* %8 to %struct.msghdr*
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store %struct.msghdr* %35, %struct.msghdr** %36, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @recvmsg(i32 %38, %struct.msghdr* %7, i32 0)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
