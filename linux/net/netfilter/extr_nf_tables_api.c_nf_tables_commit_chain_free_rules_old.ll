; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_commit_chain_free_rules_old.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_commit_chain_free_rules_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_rule = type { i32 }
%struct.nft_rules_old = type { i32, %struct.nft_rule** }

@__nf_tables_commit_chain_free_rules_old = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_rule**)* @nf_tables_commit_chain_free_rules_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_commit_chain_free_rules_old(%struct.nft_rule** %0) #0 {
  %2 = alloca %struct.nft_rule**, align 8
  %3 = alloca %struct.nft_rule**, align 8
  %4 = alloca %struct.nft_rules_old*, align 8
  store %struct.nft_rule** %0, %struct.nft_rule*** %2, align 8
  %5 = load %struct.nft_rule**, %struct.nft_rule*** %2, align 8
  store %struct.nft_rule** %5, %struct.nft_rule*** %3, align 8
  br label %6

6:                                                ; preds = %10, %1
  %7 = load %struct.nft_rule**, %struct.nft_rule*** %3, align 8
  %8 = load %struct.nft_rule*, %struct.nft_rule** %7, align 8
  %9 = icmp ne %struct.nft_rule* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.nft_rule**, %struct.nft_rule*** %3, align 8
  %12 = getelementptr inbounds %struct.nft_rule*, %struct.nft_rule** %11, i32 1
  store %struct.nft_rule** %12, %struct.nft_rule*** %3, align 8
  br label %6

13:                                               ; preds = %6
  %14 = load %struct.nft_rule**, %struct.nft_rule*** %3, align 8
  %15 = getelementptr inbounds %struct.nft_rule*, %struct.nft_rule** %14, i32 1
  store %struct.nft_rule** %15, %struct.nft_rule*** %3, align 8
  %16 = load %struct.nft_rule**, %struct.nft_rule*** %3, align 8
  %17 = bitcast %struct.nft_rule** %16 to i8*
  %18 = bitcast i8* %17 to %struct.nft_rules_old*
  store %struct.nft_rules_old* %18, %struct.nft_rules_old** %4, align 8
  %19 = load %struct.nft_rule**, %struct.nft_rule*** %2, align 8
  %20 = load %struct.nft_rules_old*, %struct.nft_rules_old** %4, align 8
  %21 = getelementptr inbounds %struct.nft_rules_old, %struct.nft_rules_old* %20, i32 0, i32 1
  store %struct.nft_rule** %19, %struct.nft_rule*** %21, align 8
  %22 = load %struct.nft_rules_old*, %struct.nft_rules_old** %4, align 8
  %23 = getelementptr inbounds %struct.nft_rules_old, %struct.nft_rules_old* %22, i32 0, i32 0
  %24 = load i32, i32* @__nf_tables_commit_chain_free_rules_old, align 4
  %25 = call i32 @call_rcu(i32* %23, i32 %24)
  ret void
}

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
