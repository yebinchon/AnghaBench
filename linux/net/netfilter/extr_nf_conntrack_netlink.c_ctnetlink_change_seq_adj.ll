; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_seq_adj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_seq_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_seqadj = type { i32* }

@CTA_SEQ_ADJ_ORIG = common dso_local global i64 0, align 8
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IPS_SEQ_ADJUST_BIT = common dso_local global i32 0, align 4
@CTA_SEQ_ADJ_REPLY = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_seq_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_seq_adj(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nf_conn_seqadj*, align 8
  %7 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %9 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %8)
  store %struct.nf_conn_seqadj* %9, %struct.nf_conn_seqadj** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %11 = icmp ne %struct.nf_conn_seqadj* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %15 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %18 = load i64, i64* @CTA_SEQ_ADJ_ORIG, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %24 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load i64, i64* @CTA_SEQ_ADJ_ORIG, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @change_seq_adj(i32* %27, %struct.nlattr* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %70

36:                                               ; preds = %22
  %37 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %38 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %39 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %38, i32 0, i32 1
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %36, %13
  %42 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %43 = load i64, i64* @CTA_SEQ_ADJ_REPLY, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %49 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %54 = load i64, i64* @CTA_SEQ_ADJ_REPLY, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i32 @change_seq_adj(i32* %52, %struct.nlattr* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %70

61:                                               ; preds = %47
  %62 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %63 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %64 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %41
  %67 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %68 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_bh(i32* %68)
  store i32 0, i32* %3, align 4
  br label %75

70:                                               ; preds = %60, %35
  %71 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %72 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %66, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @change_seq_adj(i32*, %struct.nlattr*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
