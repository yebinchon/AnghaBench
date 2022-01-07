; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_initiate.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SHDLC_MAX_WINDOW = common dso_local global i32 0, align 4
@SHDLC_SREJ_SUPPORT = common dso_local global i64 0, align 8
@U_FRAME_RSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_shdlc*)* @llc_shdlc_connect_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_shdlc_connect_initiate(%struct.llc_shdlc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %7 = call %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc* %6, i32 2)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp eq %struct.sk_buff* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @SHDLC_MAX_WINDOW, align 4
  %16 = call i32 @skb_put_u8(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i64, i64* @SHDLC_SREJ_SUPPORT, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = call i32 @skb_put_u8(%struct.sk_buff* %17, i32 %21)
  %23 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @U_FRAME_RSET, align 4
  %26 = call i32 @llc_shdlc_send_u_frame(%struct.llc_shdlc* %23, %struct.sk_buff* %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_shdlc_send_u_frame(%struct.llc_shdlc*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
