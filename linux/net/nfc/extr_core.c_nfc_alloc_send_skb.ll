; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_alloc_send_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_alloc_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_dev = type { i32, i32 }
%struct.sock = type { i32 }

@NFC_HEADER_SIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @nfc_alloc_send_skb(%struct.nfc_dev* %0, %struct.sock* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %13, %16
  %18 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  %22 = load i32, i32* @NFC_HEADER_SIZE, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MSG_DONTWAIT, align 4
  %28 = and i32 %26, %27
  %29 = load i32*, i32** %10, align 8
  %30 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %24, i32 %25, i32 %28, i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %5
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFC_HEADER_SIZE, align 4
  %39 = add i32 %37, %38
  %40 = call i32 @skb_reserve(%struct.sk_buff* %34, i32 %39)
  br label %41

41:                                               ; preds = %33, %5
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %42
}

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
