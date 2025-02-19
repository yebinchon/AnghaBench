; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_name = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_local_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_local_name(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_local_name*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_local_name*
  store %struct.hci_rp_read_local_name* %10, %struct.hci_rp_read_local_name** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_rp_read_local_name*, %struct.hci_rp_read_local_name** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_local_name, %struct.hci_rp_read_local_name* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.hci_rp_read_local_name*, %struct.hci_rp_read_local_name** %5, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_local_name, %struct.hci_rp_read_local_name* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @HCI_SETUP, align 4
  %26 = call i64 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load i32, i32* @HCI_CONFIG, align 4
  %31 = call i64 @hci_dev_test_flag(%struct.hci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %23
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hci_rp_read_local_name*, %struct.hci_rp_read_local_name** %5, align 8
  %38 = getelementptr inbounds %struct.hci_rp_read_local_name, %struct.hci_rp_read_local_name* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HCI_MAX_NAME_LENGTH, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %22, %33, %28
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
