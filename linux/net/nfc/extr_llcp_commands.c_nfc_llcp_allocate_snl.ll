; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_allocate_snl.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_allocate_snl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_llcp_local = type { %struct.nfc_dev* }
%struct.nfc_dev = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@LLCP_HEADER_SIZE = common dso_local global i64 0, align 8
@NFC_HEADER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLCP_SAP_SDP = common dso_local global i32 0, align 4
@LLCP_PDU_SNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfc_llcp_local*, i64)* @nfc_llcp_allocate_snl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nfc_llcp_allocate_snl(%struct.nfc_llcp_local* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nfc_llcp_local*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %10 = icmp eq %struct.nfc_llcp_local* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.sk_buff* @ERR_PTR(i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %16, i32 0, i32 0
  %18 = load %struct.nfc_dev*, %struct.nfc_dev** %17, align 8
  store %struct.nfc_dev* %18, %struct.nfc_dev** %7, align 8
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %20 = icmp eq %struct.nfc_dev* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sk_buff* @ERR_PTR(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  br label %66

25:                                               ; preds = %15
  %26 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %30 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %33 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sk_buff* @alloc_skb(i64 %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.sk_buff* @ERR_PTR(i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %3, align 8
  br label %66

52:                                               ; preds = %25
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %55 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @skb_reserve(%struct.sk_buff* %53, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @LLCP_SAP_SDP, align 4
  %62 = load i32, i32* @LLCP_SAP_SDP, align 4
  %63 = load i32, i32* @LLCP_PDU_SNL, align 4
  %64 = call %struct.sk_buff* @llcp_add_header(%struct.sk_buff* %60, i32 %61, i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %3, align 8
  br label %66

66:                                               ; preds = %52, %48, %21, %11
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %67
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @llcp_add_header(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
