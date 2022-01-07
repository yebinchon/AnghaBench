; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_send_u_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_send_u_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32 (i32, %struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"uframe_modifier=%d\0A\00", align 1
@SHDLC_CONTROL_HEAD_U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_shdlc*, %struct.sk_buff*, i32)* @llc_shdlc_send_u_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_shdlc_send_u_frame(%struct.llc_shdlc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.llc_shdlc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @SHDLC_CONTROL_HEAD_U, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @skb_push(%struct.sk_buff* %13, i32 1)
  %15 = inttoptr i64 %14 to i32*
  store i32 %12, i32* %15, align 4
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %17, align 8
  %19 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %20 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 %18(i32 %21, %struct.sk_buff* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
