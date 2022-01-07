; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_connection_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_connection_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_conndel_req = type { i32, i32 }
%struct.hidp_session = type { i32, i32 }

@HIDP_VIRTUAL_CABLE_UNPLUG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HIDP_TRANS_HID_CONTROL = common dso_local global i32 0, align 4
@HIDP_CTRL_VIRTUAL_CABLE_UNPLUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidp_connection_del(%struct.hidp_conndel_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidp_conndel_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidp_session*, align 8
  store %struct.hidp_conndel_req* %0, %struct.hidp_conndel_req** %3, align 8
  %6 = load i32, i32* @HIDP_VIRTUAL_CABLE_UNPLUG, align 4
  %7 = call i32 @BIT(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.hidp_conndel_req*, %struct.hidp_conndel_req** %3, align 8
  %9 = getelementptr inbounds %struct.hidp_conndel_req, %struct.hidp_conndel_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.hidp_conndel_req*, %struct.hidp_conndel_req** %3, align 8
  %20 = getelementptr inbounds %struct.hidp_conndel_req, %struct.hidp_conndel_req* %19, i32 0, i32 1
  %21 = call %struct.hidp_session* @hidp_session_find(i32* %20)
  store %struct.hidp_session* %21, %struct.hidp_session** %5, align 8
  %22 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %23 = icmp ne %struct.hidp_session* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %18
  %28 = load %struct.hidp_conndel_req*, %struct.hidp_conndel_req** %3, align 8
  %29 = getelementptr inbounds %struct.hidp_conndel_req, %struct.hidp_conndel_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HIDP_VIRTUAL_CABLE_UNPLUG, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %37 = load i32, i32* @HIDP_TRANS_HID_CONTROL, align 4
  %38 = load i32, i32* @HIDP_CTRL_VIRTUAL_CABLE_UNPLUG, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @hidp_send_ctrl_message(%struct.hidp_session* %36, i32 %39, i32* null, i32 0)
  br label %48

41:                                               ; preds = %27
  %42 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %43 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %46 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %45, i32 0, i32 0
  %47 = call i32 @l2cap_unregister_user(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.hidp_session*, %struct.hidp_session** %5, align 8
  %50 = call i32 @hidp_session_put(%struct.hidp_session* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %24, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.hidp_session* @hidp_session_find(i32*) #1

declare dso_local i32 @hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

declare dso_local i32 @l2cap_unregister_user(i32, i32*) #1

declare dso_local i32 @hidp_session_put(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
