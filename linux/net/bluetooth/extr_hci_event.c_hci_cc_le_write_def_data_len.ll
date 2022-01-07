; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_write_def_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_le_write_def_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i8*, i8*, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_cp_le_write_def_data_len = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_OP_LE_WRITE_DEF_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_le_write_def_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_le_write_def_data_len(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_cp_le_write_def_data_len*, align 8
  %6 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @HCI_OP_LE_WRITE_DEF_DATA_LEN, align 4
  %23 = call %struct.hci_cp_le_write_def_data_len* @hci_sent_cmd_data(%struct.hci_dev* %21, i32 %22)
  store %struct.hci_cp_le_write_def_data_len* %23, %struct.hci_cp_le_write_def_data_len** %5, align 8
  %24 = load %struct.hci_cp_le_write_def_data_len*, %struct.hci_cp_le_write_def_data_len** %5, align 8
  %25 = icmp ne %struct.hci_cp_le_write_def_data_len* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.hci_cp_le_write_def_data_len*, %struct.hci_cp_le_write_def_data_len** %5, align 8
  %29 = getelementptr inbounds %struct.hci_cp_le_write_def_data_len, %struct.hci_cp_le_write_def_data_len* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le16_to_cpu(i32 %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hci_cp_le_write_def_data_len*, %struct.hci_cp_le_write_def_data_len** %5, align 8
  %35 = getelementptr inbounds %struct.hci_cp_le_write_def_data_len, %struct.hci_cp_le_write_def_data_len* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le16_to_cpu(i32 %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %27, %26, %19
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.hci_cp_le_write_def_data_len* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
