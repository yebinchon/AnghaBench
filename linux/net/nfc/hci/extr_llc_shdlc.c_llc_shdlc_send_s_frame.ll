; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_send_s_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_send_s_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32 (i32, %struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"sframe_type=%d nr=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SHDLC_CONTROL_HEAD_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_shdlc*, i32, i32)* @llc_shdlc_send_s_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_shdlc_send_s_frame(%struct.llc_shdlc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.llc_shdlc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %14 = call %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc* %13, i32 0)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i32, i32* @SHDLC_CONTROL_HEAD_S, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 3
  %24 = or i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i64 @skb_push(%struct.sk_buff* %27, i32 1)
  %29 = inttoptr i64 %28 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %31 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %31, align 8
  %33 = load %struct.llc_shdlc*, %struct.llc_shdlc** %5, align 8
  %34 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = call i32 %32(i32 %35, %struct.sk_buff* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %20, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
