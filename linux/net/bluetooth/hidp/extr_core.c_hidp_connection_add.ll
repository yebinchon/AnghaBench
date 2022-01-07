; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_connection_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_connection_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_connadd_req = type { i32 }
%struct.socket = type { i32 }
%struct.hidp_session = type { i32 }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_chan = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.l2cap_chan* }

@HIDP_VIRTUAL_CABLE_UNPLUG = common dso_local global i32 0, align 4
@HIDP_BOOT_PROTOCOL_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidp_connection_add(%struct.hidp_connadd_req* %0, %struct.socket* %1, %struct.socket* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidp_connadd_req*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidp_session*, align 8
  %10 = alloca %struct.l2cap_conn*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  %12 = alloca i32, align 4
  store %struct.hidp_connadd_req* %0, %struct.hidp_connadd_req** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.socket* %2, %struct.socket** %7, align 8
  %13 = load i32, i32* @HIDP_VIRTUAL_CABLE_UNPLUG, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* @HIDP_BOOT_PROTOCOL_MODE, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = call i32 @hidp_verify_sockets(%struct.socket* %18, %struct.socket* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %27 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %25
  %37 = load %struct.socket*, %struct.socket** %6, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_2__* @l2cap_pi(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %41, align 8
  store %struct.l2cap_chan* %42, %struct.l2cap_chan** %11, align 8
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %10, align 8
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %44 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %43)
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.l2cap_conn* @l2cap_conn_get(i64 %52)
  store %struct.l2cap_conn* %53, %struct.l2cap_conn** %10, align 8
  br label %54

54:                                               ; preds = %49, %36
  %55 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %56 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %55)
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %10, align 8
  %58 = icmp ne %struct.l2cap_conn* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EBADFD, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %54
  %63 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %64 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %63, i32 0, i32 0
  %65 = load %struct.socket*, %struct.socket** %6, align 8
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %68 = load %struct.l2cap_conn*, %struct.l2cap_conn** %10, align 8
  %69 = call i32 @hidp_session_new(%struct.hidp_session** %9, i32* %64, %struct.socket* %65, %struct.socket* %66, %struct.hidp_connadd_req* %67, %struct.l2cap_conn* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %85

73:                                               ; preds = %62
  %74 = load %struct.l2cap_conn*, %struct.l2cap_conn** %10, align 8
  %75 = load %struct.hidp_session*, %struct.hidp_session** %9, align 8
  %76 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %75, i32 0, i32 0
  %77 = call i32 @l2cap_register_user(%struct.l2cap_conn* %74, i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load %struct.hidp_session*, %struct.hidp_session** %9, align 8
  %84 = call i32 @hidp_session_put(%struct.hidp_session* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.l2cap_conn*, %struct.l2cap_conn** %10, align 8
  %87 = call i32 @l2cap_conn_put(%struct.l2cap_conn* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %59, %33, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hidp_verify_sockets(%struct.socket*, %struct.socket*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local %struct.l2cap_conn* @l2cap_conn_get(i64) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @hidp_session_new(%struct.hidp_session**, i32*, %struct.socket*, %struct.socket*, %struct.hidp_connadd_req*, %struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_register_user(%struct.l2cap_conn*, i32*) #1

declare dso_local i32 @hidp_session_put(%struct.hidp_session*) #1

declare dso_local i32 @l2cap_conn_put(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
