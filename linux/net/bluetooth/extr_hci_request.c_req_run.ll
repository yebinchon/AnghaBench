; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_req_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_req_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"length %u\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@HCI_REQ_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64, i64)* @req_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_run(%struct.hci_request* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store %struct.hci_request* %0, %struct.hci_request** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %12 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %11, i32 0, i32 2
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %8, align 8
  %14 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %15 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %14, i32 0, i32 1
  %16 = call i32 @skb_queue_len(i32* %15)
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %19 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %24 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %23, i32 0, i32 1
  %25 = call i32 @skb_queue_purge(i32* %24)
  %26 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %27 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %88

29:                                               ; preds = %3
  %30 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %31 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %30, i32 0, i32 1
  %32 = call i64 @skb_queue_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %29
  %38 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %39 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %38, i32 0, i32 1
  %40 = call %struct.sk_buff* @skb_peek_tail(i32* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %44, i64* %48, align 8
  br label %66

49:                                               ; preds = %37
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load i32, i32* @HCI_REQ_SKB, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %52, %49
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.hci_request*, %struct.hci_request** %5, align 8
  %73 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %72, i32 0, i32 1
  %74 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 2
  %76 = call i32 @skb_queue_splice_tail(i32* %73, %struct.TYPE_5__* %75)
  %77 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 0
  %87 = call i32 @queue_work(i32 %84, i32* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %66, %34, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_splice_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
