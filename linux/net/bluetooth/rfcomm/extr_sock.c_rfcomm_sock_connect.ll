; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_rc = type { i32, i32 }
%struct.rfcomm_dlc = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.rfcomm_dlc* }

@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_BOUND = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @rfcomm_sock_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_rc*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.rfcomm_dlc*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_rc*
  store %struct.sockaddr_rc* %15, %struct.sockaddr_rc** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %21, align 8
  store %struct.rfcomm_dlc* %22, %struct.rfcomm_dlc** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_BLUETOOTH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %117

37:                                               ; preds = %28
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = call i32 @lock_sock(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BT_OPEN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_BOUND, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EBADFD, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %113

54:                                               ; preds = %45, %37
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SOCK_STREAM, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %113

63:                                               ; preds = %54
  %64 = load i64, i64* @BT_CONNECT, align 8
  %65 = load %struct.sock*, %struct.sock** %11, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sock*, %struct.sock** %11, align 8
  %68 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %10, align 8
  %71 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %70, i32 0, i32 1
  %72 = call i32 @bacpy(i32* %69, i32* %71)
  %73 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sock*, %struct.sock** %11, align 8
  %77 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %84 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sock*, %struct.sock** %11, align 8
  %86 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %90 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %92 = load %struct.sock*, %struct.sock** %11, align 8
  %93 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %10, align 8
  %96 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %95, i32 0, i32 1
  %97 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %10, align 8
  %98 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rfcomm_dlc_open(%struct.rfcomm_dlc* %91, i32* %94, i32* %96, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %63
  %104 = load %struct.sock*, %struct.sock** %11, align 8
  %105 = load i32, i32* @BT_CONNECTED, align 4
  %106 = load %struct.sock*, %struct.sock** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @O_NONBLOCK, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @sock_sndtimeo(%struct.sock* %106, i32 %109)
  %111 = call i32 @bt_sock_wait_state(%struct.sock* %104, i32 %105, i32 %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %103, %63
  br label %113

113:                                              ; preds = %112, %60, %51
  %114 = load %struct.sock*, %struct.sock** %11, align 8
  %115 = call i32 @release_sock(%struct.sock* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %34
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_2__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @rfcomm_dlc_open(%struct.rfcomm_dlc*, i32*, i32*, i32) #1

declare dso_local i32 @bt_sock_wait_state(%struct.sock*, i32, i32) #1

declare dso_local i32 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
