; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_send_ua.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_connect_send_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@U_FRAME_UA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_shdlc*)* @llc_shdlc_connect_send_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_shdlc_connect_send_ua(%struct.llc_shdlc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llc_shdlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %3, align 8
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %7 = call %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc* %6, i32 0)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp eq %struct.sk_buff* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.llc_shdlc*, %struct.llc_shdlc** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @U_FRAME_UA, align 4
  %17 = call i32 @llc_shdlc_send_u_frame(%struct.llc_shdlc* %14, %struct.sk_buff* %15, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc*, i32) #1

declare dso_local i32 @llc_shdlc_send_u_frame(%struct.llc_shdlc*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
