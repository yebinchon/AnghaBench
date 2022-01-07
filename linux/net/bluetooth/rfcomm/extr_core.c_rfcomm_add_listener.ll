; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_add_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_add_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_l2 = type { i32, i64, i32, i32, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.rfcomm_session = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Create socket failed %d\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@L2CAP_PSM_RFCOMM = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Bind failed %d\00", align 1
@l2cap_mtu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Listen failed %d\00", align 1
@BT_LISTEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rfcomm_add_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_add_listener(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr_l2, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.rfcomm_session*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @rfcomm_l2sock_create(%struct.socket** %5)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %4, i32 0, i32 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @bacpy(i32* %17, i32* %18)
  %20 = load i32, i32* @AF_BLUETOOTH, align 4
  %21 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %4, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @L2CAP_PSM_RFCOMM, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %4, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @BDADDR_BREDR, align 4
  %27 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = bitcast %struct.sockaddr_l2* %4 to %struct.sockaddr*
  %30 = call i32 @kernel_bind(%struct.socket* %28, %struct.sockaddr* %29, i32 32)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %67

36:                                               ; preds = %16
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.sock*, %struct.sock** %38, align 8
  store %struct.sock* %39, %struct.sock** %6, align 8
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call i32 @lock_sock(%struct.sock* %40)
  %42 = load i32, i32* @l2cap_mtu, align 4
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = call %struct.TYPE_4__* @l2cap_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %6, align 8
  %49 = call i32 @release_sock(%struct.sock* %48)
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = call i32 @kernel_listen(%struct.socket* %50, i32 10)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @BT_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %67

57:                                               ; preds = %36
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = load i32, i32* @BT_LISTEN, align 4
  %60 = call %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %58, i32 %59)
  store %struct.rfcomm_session* %60, %struct.rfcomm_session** %7, align 8
  %61 = load %struct.rfcomm_session*, %struct.rfcomm_session** %7, align 8
  %62 = icmp ne %struct.rfcomm_session* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %63, %54, %33
  %68 = load %struct.socket*, %struct.socket** %5, align 8
  %69 = call i32 @sock_release(%struct.socket* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %66, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @rfcomm_l2sock_create(%struct.socket**) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kernel_listen(%struct.socket*, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_add(%struct.socket*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
