; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_resend_last.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_resend_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hci_command_hdr = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_OP_RESET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_resend_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_resend_last(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_command_hdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %18, %struct.hci_command_hdr** %3, align 8
  %19 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %3, align 8
  %20 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__le16_to_cpu(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @HCI_OP_RESET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %47

27:                                               ; preds = %11
  %28 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @skb_clone(%struct.TYPE_2__* %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %47

36:                                               ; preds = %27
  %37 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @skb_queue_head(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %36, %35, %26, %10
  ret void
}

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
