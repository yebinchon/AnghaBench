; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s opcode 0x%4.4x plen %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no memory for command\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_REQ_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_send_cmd(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev* %17, i32 %18, i32 %19, i8* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = call i32 @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %4
  %30 = load i32, i32* @HCI_REQ_START, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %29, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev*, i32, i32, i8*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
