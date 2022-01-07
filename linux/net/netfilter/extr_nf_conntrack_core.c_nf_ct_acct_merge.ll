; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_acct_merge.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_acct_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_acct = type { %struct.nf_conn_counter* }
%struct.nf_conn_counter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, i32, %struct.nf_conn*)* @nf_ct_acct_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_acct_merge(%struct.nf_conn* %0, i32 %1, %struct.nf_conn* %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.nf_conn_acct*, align 8
  %8 = alloca %struct.nf_conn_counter*, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %6, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %11 = call %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn* %10)
  store %struct.nf_conn_acct* %11, %struct.nf_conn_acct** %7, align 8
  %12 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %7, align 8
  %13 = icmp ne %struct.nf_conn_acct* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conn_acct, %struct.nf_conn_acct* %15, i32 0, i32 0
  %17 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %16, align 8
  store %struct.nf_conn_counter* %17, %struct.nf_conn_counter** %8, align 8
  %18 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @CTINFO2DIR(i32 %19)
  %21 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %18, i64 %20
  %22 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %21, i32 0, i32 0
  %23 = call i32 @atomic64_read(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @nf_ct_acct_update(%struct.nf_conn* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @nf_ct_acct_update(%struct.nf_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
