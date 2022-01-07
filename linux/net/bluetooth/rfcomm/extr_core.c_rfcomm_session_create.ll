; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sockaddr_l2 = type { i8*, i64, i64, i8*, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%pMR -> %pMR\00", align 1
@AF_BLUETOOTH = common dso_local global i8* null, align 8
@BDADDR_BREDR = common dso_local global i8* null, align 8
@l2cap_mtu = common dso_local global i32 0, align 4
@l2cap_ertm = common dso_local global i64 0, align 8
@L2CAP_MODE_ERTM = common dso_local global i32 0, align 4
@BT_BOUND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L2CAP_PSM_RFCOMM = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (i32*, i32*, i32, i32*)* @rfcomm_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_session_create(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rfcomm_session*, align 8
  %11 = alloca %struct.sockaddr_l2, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.sock*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15)
  %17 = call i32 @rfcomm_l2sock_create(%struct.socket** %12)
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %5, align 8
  br label %116

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @bacpy(i32* %24, i32* %25)
  %27 = load i8*, i8** @AF_BLUETOOTH, align 8
  %28 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @BDADDR_BREDR, align 8
  %32 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.socket*, %struct.socket** %12, align 8
  %34 = bitcast %struct.sockaddr_l2* %11 to %struct.sockaddr*
  %35 = call i32 @kernel_bind(%struct.socket* %33, %struct.sockaddr* %34, i32 40)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %113

41:                                               ; preds = %23
  %42 = load %struct.socket*, %struct.socket** %12, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load %struct.sock*, %struct.sock** %43, align 8
  store %struct.sock* %44, %struct.sock** %13, align 8
  %45 = load %struct.sock*, %struct.sock** %13, align 8
  %46 = call i32 @lock_sock(%struct.sock* %45)
  %47 = load i32, i32* @l2cap_mtu, align 4
  %48 = load %struct.sock*, %struct.sock** %13, align 8
  %49 = call %struct.TYPE_4__* @l2cap_pi(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.sock*, %struct.sock** %13, align 8
  %55 = call %struct.TYPE_4__* @l2cap_pi(%struct.sock* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  %59 = load i64, i64* @l2cap_ertm, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %41
  %62 = load i32, i32* @L2CAP_MODE_ERTM, align 4
  %63 = load %struct.sock*, %struct.sock** %13, align 8
  %64 = call %struct.TYPE_4__* @l2cap_pi(%struct.sock* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %41
  %69 = load %struct.sock*, %struct.sock** %13, align 8
  %70 = call i32 @release_sock(%struct.sock* %69)
  %71 = load %struct.socket*, %struct.socket** %12, align 8
  %72 = load i32, i32* @BT_BOUND, align 4
  %73 = call %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %71, i32 %72)
  store %struct.rfcomm_session* %73, %struct.rfcomm_session** %10, align 8
  %74 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %75 = icmp ne %struct.rfcomm_session* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %113

80:                                               ; preds = %68
  %81 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %82 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @bacpy(i32* %83, i32* %84)
  %86 = load i8*, i8** @AF_BLUETOOTH, align 8
  %87 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* @L2CAP_PSM_RFCOMM, align 4
  %89 = call i64 @cpu_to_le16(i32 %88)
  %90 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 2
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i8*, i8** @BDADDR_BREDR, align 8
  %93 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %11, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.socket*, %struct.socket** %12, align 8
  %95 = bitcast %struct.sockaddr_l2* %11 to %struct.sockaddr*
  %96 = load i32, i32* @O_NONBLOCK, align 4
  %97 = call i32 @kernel_connect(%struct.socket* %94, %struct.sockaddr* %95, i32 40, i32 %96)
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %80
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EINPROGRESS, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102, %80
  %109 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  store %struct.rfcomm_session* %109, %struct.rfcomm_session** %5, align 8
  br label %116

110:                                              ; preds = %102
  %111 = load %struct.rfcomm_session*, %struct.rfcomm_session** %10, align 8
  %112 = call %struct.rfcomm_session* @rfcomm_session_del(%struct.rfcomm_session* %111)
  store %struct.rfcomm_session* %112, %struct.rfcomm_session** %5, align 8
  br label %116

113:                                              ; preds = %76, %40
  %114 = load %struct.socket*, %struct.socket** %12, align 8
  %115 = call i32 @sock_release(%struct.socket* %114)
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %5, align 8
  br label %116

116:                                              ; preds = %113, %110, %108, %22
  %117 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  ret %struct.rfcomm_session* %117
}

declare dso_local i32 @BT_DBG(i8*, i32*, i32*) #1

declare dso_local i32 @rfcomm_l2sock_create(%struct.socket**) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_add(%struct.socket*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @kernel_connect(%struct.socket*, %struct.sockaddr*, i32, i32) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_del(%struct.rfcomm_session*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
