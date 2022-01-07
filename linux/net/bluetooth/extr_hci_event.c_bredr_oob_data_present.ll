; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_bredr_oob_data_present.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_bredr_oob_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.oob_data = type { i32, i32, i32, i32, i32 }

@BDADDR_BREDR = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@ZERO_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*)* @bredr_oob_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bredr_oob_data_present(%struct.hci_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.oob_data*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 1
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %11 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %10, i32 0, i32 0
  %12 = load i32, i32* @BDADDR_BREDR, align 4
  %13 = call %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev* %9, i32* %11, i32 %12)
  store %struct.oob_data* %13, %struct.oob_data** %5, align 8
  %14 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %15 = icmp ne %struct.oob_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = call i64 @bredr_sc_enabled(%struct.hci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = load i32, i32* @HCI_SC_ONLY, align 4
  %24 = call i32 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %28 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %21
  %31 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %32 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ZERO_KEY, align 4
  %35 = call i32 @memcmp(i32 %33, i32 %34, i32 16)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %39 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ZERO_KEY, align 4
  %42 = call i32 @memcmp(i32 %40, i32 %41, i32 16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %2, align 4
  br label %62

45:                                               ; preds = %37
  store i32 2, i32* %2, align 4
  br label %62

46:                                               ; preds = %17
  %47 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %48 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ZERO_KEY, align 4
  %51 = call i32 @memcmp(i32 %49, i32 %50, i32 16)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.oob_data*, %struct.oob_data** %5, align 8
  %55 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ZERO_KEY, align 4
  %58 = call i32 @memcmp(i32 %56, i32 %57, i32 16)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %46
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %45, %44, %26, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev*, i32*, i32) #1

declare dso_local i64 @bredr_sc_enabled(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
