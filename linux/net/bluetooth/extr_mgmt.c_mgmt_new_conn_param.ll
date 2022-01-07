; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_conn_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_new_conn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_ev_new_conn_param = type { i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LE_LINK = common dso_local global i32 0, align 4
@MGMT_EV_NEW_CONN_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_new_conn_param(%struct.hci_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mgmt_ev_new_conn_param, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @hci_is_identity_address(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  br label %51

23:                                               ; preds = %8
  %24 = call i32 @memset(%struct.mgmt_ev_new_conn_param* %17, i32 0, i32 48)
  %25 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @bacpy(i32* %26, i32* %27)
  %29 = load i32, i32* @LE_LINK, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @link_to_bdaddr(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, %struct.mgmt_ev_new_conn_param* %17, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @MGMT_EV_NEW_CONN_PARAM, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %50 = call i32 @mgmt_event(i32 %48, %struct.hci_dev* %49, %struct.mgmt_ev_new_conn_param* %17, i32 48, i32* null)
  br label %51

51:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @hci_is_identity_address(i32*, i32) #1

declare dso_local i32 @memset(%struct.mgmt_ev_new_conn_param*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_new_conn_param*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
