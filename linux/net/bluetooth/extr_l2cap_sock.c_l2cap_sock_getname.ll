; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_l2 = type { i32, i8*, i32, i32 }
%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.l2cap_chan* }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @l2cap_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_l2*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.l2cap_chan*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_l2*
  store %struct.sockaddr_l2* %12, %struct.sockaddr_l2** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %18, align 8
  store %struct.l2cap_chan* %19, %struct.l2cap_chan** %10, align 8
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %20, %struct.sock* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BT_CONNECTED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BT_CONNECT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_CONNECT2, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BT_CONFIG, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOTCONN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %100

52:                                               ; preds = %43, %37, %31, %25, %3
  %53 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %54 = call i32 @memset(%struct.sockaddr_l2* %53, i32 0, i32 24)
  %55 = load i32, i32* @AF_BLUETOOTH, align 4
  %56 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %52
  %66 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %67 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %66, i32 0, i32 2
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 5
  %70 = call i32 @bacpy(i32* %67, i32* %69)
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %78 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %81 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %99

82:                                               ; preds = %52
  %83 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %84 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %83, i32 0, i32 2
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 2
  %87 = call i32 @bacpy(i32* %84, i32* %86)
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %93 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  %95 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %8, align 8
  %98 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %82, %65
  store i32 24, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %49
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_l2*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
