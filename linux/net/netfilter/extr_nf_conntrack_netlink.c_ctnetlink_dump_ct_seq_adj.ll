; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_ct_seq_adj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_ct_seq_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32, i32 }
%struct.nf_conn_seqadj = type { %struct.nf_ct_seqadj* }
%struct.nf_ct_seqadj = type { i32 }

@IPS_SEQ_ADJUST = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_ORIG = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_ct_seq_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_ct_seq_adj(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn_seqadj*, align 8
  %7 = alloca %struct.nf_ct_seqadj*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %9 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %8)
  store %struct.nf_conn_seqadj* %9, %struct.nf_conn_seqadj** %6, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %11 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPS_SEQ_ADJUST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %18 = icmp ne %struct.nf_conn_seqadj* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %16
  %21 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %22 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %25 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %24, i32 0, i32 0
  %26 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %25, align 8
  %27 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %28 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %26, i64 %27
  store %struct.nf_ct_seqadj* %28, %struct.nf_ct_seqadj** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %7, align 8
  %31 = load i32, i32* @CTA_SEQ_ADJ_ORIG, align 4
  %32 = call i32 @dump_ct_seq_adj(%struct.sk_buff* %29, %struct.nf_ct_seqadj* %30, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %51

35:                                               ; preds = %20
  %36 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %6, align 8
  %37 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %36, i32 0, i32 0
  %38 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %37, align 8
  %39 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %40 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %38, i64 %39
  store %struct.nf_ct_seqadj* %40, %struct.nf_ct_seqadj** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %7, align 8
  %43 = load i32, i32* @CTA_SEQ_ADJ_REPLY, align 4
  %44 = call i32 @dump_ct_seq_adj(%struct.sk_buff* %41, %struct.nf_ct_seqadj* %42, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %51

47:                                               ; preds = %35
  %48 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %49 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_bh(i32* %49)
  store i32 0, i32* %3, align 4
  br label %55

51:                                               ; preds = %46, %34
  %52 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %53 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %47, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dump_ct_seq_adj(%struct.sk_buff*, %struct.nf_ct_seqadj*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
