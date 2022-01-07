; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_rc = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @rfcomm_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_rc*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_rc*
  store %struct.sockaddr_rc* %11, %struct.sockaddr_rc** %8, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %15, %struct.sock* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_CONNECTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BT_CONNECT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_CONNECT2, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOTCONN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %70

41:                                               ; preds = %32, %26, %20, %3
  %42 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %43 = call i32 @memset(%struct.sockaddr_rc* %42, i32 0, i32 12)
  %44 = load i32, i32* @AF_BLUETOOTH, align 4
  %45 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %56, i32 0, i32 0
  %58 = load %struct.sock*, %struct.sock** %9, align 8
  %59 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @bacpy(i32* %57, i32* %60)
  br label %69

62:                                               ; preds = %41
  %63 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %64 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %63, i32 0, i32 0
  %65 = load %struct.sock*, %struct.sock** %9, align 8
  %66 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @bacpy(i32* %64, i32* %67)
  br label %69

69:                                               ; preds = %62, %55
  store i32 12, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %38
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_rc*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
