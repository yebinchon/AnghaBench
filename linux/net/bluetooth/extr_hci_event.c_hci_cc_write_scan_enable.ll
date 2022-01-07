; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_write_scan_enable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_write_scan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64, i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_WRITE_SCAN_ENABLE = common dso_local global i32 0, align 4
@SCAN_INQUIRY = common dso_local global i32 0, align 4
@HCI_ISCAN = common dso_local global i32 0, align 4
@SCAN_PAGE = common dso_local global i32 0, align 4
@HCI_PSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_write_scan_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_write_scan_enable(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_OP_WRITE_SCAN_ENABLE, align 4
  %20 = call i8* @hci_sent_cmd_data(%struct.hci_dev* %18, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %69

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 @hci_dev_lock(%struct.hci_dev* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %66

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SCAN_INQUIRY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @HCI_ISCAN, align 4
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* @HCI_ISCAN, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SCAN_PAGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @HCI_PSCAN, align 4
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @HCI_PSCAN, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = call i32 @hci_dev_unlock(%struct.hci_dev* %67)
  br label %69

69:                                               ; preds = %66, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i8* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
