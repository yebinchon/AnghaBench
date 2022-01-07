; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_verify_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_verify_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.l2cap_chan = type { i32, i32 }
%struct.bt_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hidp_session = type { i32 }
%struct.TYPE_4__ = type { %struct.l2cap_chan* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTUNIQ = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @hidp_verify_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_verify_sockets(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.bt_sock*, align 8
  %9 = alloca %struct.bt_sock*, align 8
  %10 = alloca %struct.hidp_session*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call i32 @l2cap_is_socket(%struct.socket* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call i32 @l2cap_is_socket(%struct.socket* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %14
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_4__* @l2cap_pi(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %26, align 8
  store %struct.l2cap_chan* %27, %struct.l2cap_chan** %6, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_4__* @l2cap_pi(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %32, align 8
  store %struct.l2cap_chan* %33, %struct.l2cap_chan** %7, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 1
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 1
  %38 = call i64 @bacmp(i32* %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %21
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 0
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 0
  %45 = call i64 @bacmp(i32* %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %21
  %48 = load i32, i32* @ENOTUNIQ, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %40
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.bt_sock* @bt_sk(i32 %53)
  store %struct.bt_sock* %54, %struct.bt_sock** %8, align 8
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.bt_sock* @bt_sk(i32 %57)
  store %struct.bt_sock* %58, %struct.bt_sock** %9, align 8
  %59 = load %struct.bt_sock*, %struct.bt_sock** %8, align 8
  %60 = getelementptr inbounds %struct.bt_sock, %struct.bt_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BT_CONNECTED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %50
  %66 = load %struct.bt_sock*, %struct.bt_sock** %9, align 8
  %67 = getelementptr inbounds %struct.bt_sock, %struct.bt_sock* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BT_CONNECTED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65, %50
  %73 = load i32, i32* @EBADFD, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %77 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %76, i32 0, i32 0
  %78 = call %struct.hidp_session* @hidp_session_find(i32* %77)
  store %struct.hidp_session* %78, %struct.hidp_session** %10, align 8
  %79 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %80 = icmp ne %struct.hidp_session* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %83 = call i32 @hidp_session_put(%struct.hidp_session* %82)
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %81, %72, %47, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @l2cap_is_socket(%struct.socket*) #1

declare dso_local %struct.TYPE_4__* @l2cap_pi(i32) #1

declare dso_local i64 @bacmp(i32*, i32*) #1

declare dso_local %struct.bt_sock* @bt_sk(i32) #1

declare dso_local %struct.hidp_session* @hidp_session_find(i32*) #1

declare dso_local i32 @hidp_session_put(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
