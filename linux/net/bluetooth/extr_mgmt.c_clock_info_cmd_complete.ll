; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_clock_info_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_clock_info_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32, i32, i32, i32, %struct.hci_conn* }
%struct.hci_conn = type { i32, i32 }
%struct.mgmt_rp_get_clock_info = type { i32, i8*, i8*, i32 }
%struct.hci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgmt_pending_cmd*, i64)* @clock_info_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_info_cmd_complete(%struct.mgmt_pending_cmd* %0, i64 %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.mgmt_rp_get_clock_info, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %9, i32 0, i32 4
  %11 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  store %struct.hci_conn* %11, %struct.hci_conn** %5, align 8
  %12 = call i32 @memset(%struct.mgmt_rp_get_clock_info* %6, i32 0, i32 32)
  %13 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %6, i32 0, i32 3
  %14 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(i32* %13, i32 %16, i32 4)
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.hci_dev* @hci_dev_get(i32 %24)
  store %struct.hci_dev* %25, %struct.hci_dev** %7, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = icmp ne %struct.hci_dev* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %6, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %35 = call i32 @hci_dev_put(%struct.hci_dev* %34)
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %38 = icmp ne %struct.hci_conn* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %6, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, %struct.mgmt_rp_get_clock_info* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  br label %50

50:                                               ; preds = %39, %36
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @mgmt_cmd_complete(i32 %54, i32 %57, i32 %60, i64 %61, %struct.mgmt_rp_get_clock_info* %6, i32 32)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %64 = icmp ne %struct.hci_conn* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %67 = call i32 @hci_conn_drop(%struct.hci_conn* %66)
  %68 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %69 = call i32 @hci_conn_put(%struct.hci_conn* %68)
  br label %70

70:                                               ; preds = %65, %51
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.mgmt_rp_get_clock_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mgmt_cmd_complete(i32, i32, i32, i64, %struct.mgmt_rp_get_clock_info*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
