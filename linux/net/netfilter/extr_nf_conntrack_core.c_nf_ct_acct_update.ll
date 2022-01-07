; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_acct_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_acct_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_acct = type { %struct.nf_conn_counter* }
%struct.nf_conn_counter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, i32, i32)* @nf_ct_acct_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_acct_update(%struct.nf_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn_acct*, align 8
  %8 = alloca %struct.nf_conn_counter*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %10 = call %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn* %9)
  store %struct.nf_conn_acct* %10, %struct.nf_conn_acct** %7, align 8
  %11 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %7, align 8
  %12 = icmp ne %struct.nf_conn_acct* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.nf_conn_acct*, %struct.nf_conn_acct** %7, align 8
  %15 = getelementptr inbounds %struct.nf_conn_acct, %struct.nf_conn_acct* %14, i32 0, i32 0
  %16 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %15, align 8
  store %struct.nf_conn_counter* %16, %struct.nf_conn_counter** %8, align 8
  %17 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @CTINFO2DIR(i32 %18)
  %20 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %17, i64 %19
  %21 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %20, i32 0, i32 1
  %22 = call i32 @atomic64_inc(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @CTINFO2DIR(i32 %25)
  %27 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %24, i64 %26
  %28 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %27, i32 0, i32 0
  %29 = call i32 @atomic64_add(i32 %23, i32* %28)
  br label %30

30:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.nf_conn_acct* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
