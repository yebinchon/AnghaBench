; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_agf.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_agf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32, i32* }

@LLCP_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Malformed AGF PDU\0A\00", align 1
@LLCP_AGF_PDU_HEADER_SIZE = common dso_local global i32 0, align 4
@LLCP_PDU_SYMM = common dso_local global i64 0, align 8
@LLCP_PDU_AGF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate PDU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_recv_agf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_recv_agf(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LLCP_HEADER_SIZE, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @LLCP_HEADER_SIZE, align 4
  %18 = call i32 @skb_pull(%struct.sk_buff* %16, i32 %17)
  br label %19

19:                                               ; preds = %83, %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LLCP_AGF_PDU_HEADER_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @LLCP_AGF_PDU_HEADER_SIZE, align 4
  %40 = call i32 @skb_pull(%struct.sk_buff* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @LLCP_HEADER_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %25
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %87

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i64 @nfc_llcp_ptype(%struct.sk_buff* %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @LLCP_PDU_SYMM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @LLCP_PDU_AGF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %52
  br label %83

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.sk_buff* @nfc_alloc_recv_skb(i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = icmp eq %struct.sk_buff* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %87

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @skb_put_data(%struct.sk_buff* %72, i32* %75, i32 %76)
  %78 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 @nfc_llcp_rx_skb(%struct.nfc_llcp_local* %78, %struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %71, %62
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @skb_pull(%struct.sk_buff* %84, i32 %85)
  br label %19

87:                                               ; preds = %13, %50, %69, %19
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @nfc_llcp_ptype(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @nfc_alloc_recv_skb(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @nfc_llcp_rx_skb(%struct.nfc_llcp_local*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
