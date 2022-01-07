; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_ev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_req_add_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s opcode 0x%4.4x plen %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"no memory for command (opcode 0x%4.4x)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_REQ_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_req_add_ev(%struct.hci_request* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hci_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hci_dev*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.hci_request* %0, %struct.hci_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %14 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %13, i32 0, i32 2
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  store %struct.hci_dev* %15, %struct.hci_dev** %11, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %23 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %66

27:                                               ; preds = %5
  %28 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev* %28, i32 %29, i32 %30, i8* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %12, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bt_dev_err(%struct.hci_dev* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %42 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %66

43:                                               ; preds = %27
  %44 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %45 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %44, i32 0, i32 1
  %46 = call i64 @skb_queue_empty(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @HCI_REQ_START, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %63 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %62, i32 0, i32 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %65 = call i32 @skb_queue_tail(i32* %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %56, %35, %26
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev*, i32, i32, i8*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
