; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seq_offset.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seq_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_seqadj = type { %struct.nf_ct_seqadj* }
%struct.nf_ct_seqadj = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_seq_offset(%struct.nf_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn_seqadj*, align 8
  %9 = alloca %struct.nf_ct_seqadj*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %11 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %10)
  store %struct.nf_conn_seqadj* %11, %struct.nf_conn_seqadj** %8, align 8
  %12 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %8, align 8
  %13 = icmp ne %struct.nf_conn_seqadj* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %8, align 8
  %17 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %16, i32 0, i32 0
  %18 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %18, i64 %20
  store %struct.nf_ct_seqadj* %21, %struct.nf_ct_seqadj** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %9, align 8
  %24 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @after(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %9, align 8
  %30 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  br label %36

32:                                               ; preds = %15
  %33 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %9, align 8
  %34 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i64 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
