; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_le_conn_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_le_conn_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_conn_params = type { i64, i32* }

@BT_CLOSED = common dso_local global i32 0, align 4
@HCI_ERROR_UNKNOWN_CONN_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_le_conn_failed(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.hci_conn_params*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %5, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 0
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 2
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.hci_conn_params* @hci_pend_le_action_lookup(i32* %11, i32* %13, i32 %16)
  store %struct.hci_conn_params* %17, %struct.hci_conn_params** %6, align 8
  %18 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %19 = icmp ne %struct.hci_conn_params* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %22 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %27 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @hci_conn_drop(i32* %28)
  %30 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %31 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @hci_conn_put(i32* %32)
  %34 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %35 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %25, %20, %2
  %37 = load i32, i32* @BT_CLOSED, align 4
  %38 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HCI_ERROR_UNKNOWN_CONN_ID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %45 = icmp ne %struct.hci_conn_params* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.hci_conn_params*, %struct.hci_conn_params** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46, %36
  %52 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %53 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 2
  %55 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @mgmt_connect_failed(%struct.hci_dev* %52, i32* %54, i32 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %46, %43
  %64 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @hci_connect_cfm(%struct.hci_conn* %64, i32 %65)
  %67 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %68 = call i32 @hci_conn_del(%struct.hci_conn* %67)
  %69 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %70 = call i32 @hci_update_background_scan(%struct.hci_dev* %69)
  %71 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %72 = call i32 @hci_req_reenable_advertising(%struct.hci_dev* %71)
  ret void
}

declare dso_local %struct.hci_conn_params* @hci_pend_le_action_lookup(i32*, i32*, i32) #1

declare dso_local i32 @hci_conn_drop(i32*) #1

declare dso_local i32 @hci_conn_put(i32*) #1

declare dso_local i32 @mgmt_connect_failed(%struct.hci_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_reenable_advertising(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
