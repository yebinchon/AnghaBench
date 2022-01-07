; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seqadj_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seqadj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_seqadj = type { %struct.nf_ct_seqadj* }
%struct.nf_ct_seqadj = type { i64, i64 }

@IPS_SEQ_ADJUST_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_seqadj_init(%struct.nf_conn* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn_seqadj*, align 8
  %10 = alloca %struct.nf_ct_seqadj*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @CTINFO2DIR(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %18 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %19 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %22 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %21)
  store %struct.nf_conn_seqadj* %22, %struct.nf_conn_seqadj** %9, align 8
  %23 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %9, align 8
  %24 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %23, i32 0, i32 0
  %25 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %25, i64 %27
  store %struct.nf_ct_seqadj* %28, %struct.nf_ct_seqadj** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %31 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %10, align 8
  %34 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %16, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
