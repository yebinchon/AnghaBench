; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_outgoing_auth_needed.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_outgoing_auth_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i64, i64, i32, i32 }

@BT_CONFIG = common dso_local global i64 0, align 8
@BT_SECURITY_SDP = common dso_local global i64 0, align 8
@BT_SECURITY_FIPS = common dso_local global i64 0, align 8
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.hci_conn*)* @hci_outgoing_auth_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_outgoing_auth_needed(%struct.hci_dev* %0, %struct.hci_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %5, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BT_CONFIG, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %54

17:                                               ; preds = %11
  %18 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BT_SECURITY_SDP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %26 = call i32 @hci_conn_ssp_enabled(%struct.hci_conn* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %28
  %35 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_SECURITY_FIPS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %46, %40, %34, %28, %24
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %23, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @hci_conn_ssp_enabled(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
