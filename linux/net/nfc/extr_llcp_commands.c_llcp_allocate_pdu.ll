; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_llcp_allocate_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_llcp_allocate_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_llcp_sock = type { i32, i32, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@LLCP_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Could not allocate PDU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfc_llcp_sock*, i32, i64)* @llcp_allocate_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @llcp_allocate_pdu(%struct.nfc_llcp_sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_llcp_sock* %0, %struct.nfc_llcp_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %19, i32 0, i32 2
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call %struct.sk_buff* @nfc_alloc_send_skb(i32 %18, i32* %20, i32 %21, i64 %24, i32* %9)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %41

30:                                               ; preds = %15
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.sk_buff* @llcp_add_header(%struct.sk_buff* %31, i32 %34, i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  br label %41

41:                                               ; preds = %30, %28, %14
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %42
}

declare dso_local %struct.sk_buff* @nfc_alloc_send_skb(i32, i32*, i32, i64, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sk_buff* @llcp_add_header(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
