; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_user_confirm_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_user_confirm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_ev_user_confirm_request = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_EV_USER_CONFIRM_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_user_confirm_request(%struct.hci_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mgmt_ev_user_confirm_request, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, %struct.mgmt_ev_user_confirm_request* %13, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @bacpy(i32* %19, i32* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @link_to_bdaddr(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, %struct.mgmt_ev_user_confirm_request* %13, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, %struct.mgmt_ev_user_confirm_request* %13, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, %struct.mgmt_ev_user_confirm_request* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @MGMT_EV_USER_CONFIRM_REQUEST, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = call i32 @mgmt_event(i32 %32, %struct.hci_dev* %33, %struct.mgmt_ev_user_confirm_request* %13, i32 16, i32* null)
  ret i32 %34
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_user_confirm_request*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
