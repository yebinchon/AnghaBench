; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sockaddr_is_sane.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sockaddr_is_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_tipc = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@AF_TIPC = common dso_local global i64 0, align 8
@TIPC_SERVICE_RANGE = common dso_local global i64 0, align 8
@TIPC_SERVICE_ADDR = common dso_local global i64 0, align 8
@TIPC_SOCKET_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_tipc*)* @tipc_sockaddr_is_sane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sockaddr_is_sane(%struct.sockaddr_tipc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_tipc*, align 8
  store %struct.sockaddr_tipc* %0, %struct.sockaddr_tipc** %3, align 8
  %4 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %5 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AF_TIPC, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %12 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TIPC_SERVICE_RANGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %18 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %23 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %21, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %10
  %30 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %31 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TIPC_SERVICE_ADDR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %3, align 8
  %37 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TIPC_SOCKET_ADDR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ true, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %16, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
