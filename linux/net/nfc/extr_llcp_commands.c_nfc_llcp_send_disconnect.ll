; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_sock = type { %struct.nfc_dev*, %struct.nfc_llcp_local* }
%struct.nfc_dev = type { i32 }
%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Sending DISC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LLCP_PDU_DISC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_send_disconnect(%struct.nfc_llcp_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_llcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca %struct.nfc_llcp_local*, align 8
  store %struct.nfc_llcp_sock* %0, %struct.nfc_llcp_sock** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %8, i32 0, i32 1
  %10 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %9, align 8
  store %struct.nfc_llcp_local* %10, %struct.nfc_llcp_local** %6, align 8
  %11 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %6, align 8
  %12 = icmp eq %struct.nfc_llcp_local* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %18 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %17, i32 0, i32 0
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %18, align 8
  store %struct.nfc_dev* %19, %struct.nfc_dev** %5, align 8
  %20 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %21 = icmp eq %struct.nfc_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %27 = load i32, i32* @LLCP_PDU_DISC, align 4
  %28 = call %struct.sk_buff* @llcp_allocate_pdu(%struct.nfc_llcp_sock* %26, i32 %27, i32 0)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_queue_tail(i32* %36, %struct.sk_buff* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %31, %22, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @llcp_allocate_pdu(%struct.nfc_llcp_sock*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
