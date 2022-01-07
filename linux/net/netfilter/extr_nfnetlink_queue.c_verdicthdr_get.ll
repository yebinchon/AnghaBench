; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_verdicthdr_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_verdicthdr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfqnl_msg_verdict_hdr = type { i32 }
%struct.nlattr = type { i32 }

@NFQA_VERDICT_HDR = common dso_local global i64 0, align 8
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@NF_MAX_VERDICT = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfqnl_msg_verdict_hdr* (%struct.nlattr**)* @verdicthdr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfqnl_msg_verdict_hdr* @verdicthdr_get(%struct.nlattr** %0) #0 {
  %2 = alloca %struct.nfqnl_msg_verdict_hdr*, align 8
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.nfqnl_msg_verdict_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %7 = load i64, i64* @NFQA_VERDICT_HDR, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.nfqnl_msg_verdict_hdr* null, %struct.nfqnl_msg_verdict_hdr** %2, align 8
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %14 = load i64, i64* @NFQA_VERDICT_HDR, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call %struct.nfqnl_msg_verdict_hdr* @nla_data(%struct.nlattr* %16)
  store %struct.nfqnl_msg_verdict_hdr* %17, %struct.nfqnl_msg_verdict_hdr** %4, align 8
  %18 = load %struct.nfqnl_msg_verdict_hdr*, %struct.nfqnl_msg_verdict_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.nfqnl_msg_verdict_hdr, %struct.nfqnl_msg_verdict_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = load i32, i32* @NF_VERDICT_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NF_MAX_VERDICT, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NF_STOLEN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %12
  store %struct.nfqnl_msg_verdict_hdr* null, %struct.nfqnl_msg_verdict_hdr** %2, align 8
  br label %34

32:                                               ; preds = %27
  %33 = load %struct.nfqnl_msg_verdict_hdr*, %struct.nfqnl_msg_verdict_hdr** %4, align 8
  store %struct.nfqnl_msg_verdict_hdr* %33, %struct.nfqnl_msg_verdict_hdr** %2, align 8
  br label %34

34:                                               ; preds = %32, %31, %11
  %35 = load %struct.nfqnl_msg_verdict_hdr*, %struct.nfqnl_msg_verdict_hdr** %2, align 8
  ret %struct.nfqnl_msg_verdict_hdr* %35
}

declare dso_local %struct.nfqnl_msg_verdict_hdr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
