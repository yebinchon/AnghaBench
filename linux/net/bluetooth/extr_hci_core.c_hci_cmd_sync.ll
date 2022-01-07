; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_cmd_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_cmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_dev = type { i32 }

@HCI_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"opcode 0x%4.4x plen %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @hci_cmd_sync(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @HCI_UP, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  br label %38

22:                                               ; preds = %5
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @bt_dev_dbg(%struct.hci_dev* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = call i32 @hci_req_sync_lock(%struct.hci_dev* %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %29, i32 %30, i32 %31, i8* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %12, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = call i32 @hci_req_sync_unlock(%struct.hci_dev* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  br label %38

38:                                               ; preds = %22, %18
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %39
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @hci_req_sync_lock(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i8*, i32) #1

declare dso_local i32 @hci_req_sync_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
