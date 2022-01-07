; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_alloc_rules.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_alloc_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_rule = type { i32 }
%struct.nft_chain = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_rule** (%struct.nft_chain*, i32)* @nf_tables_chain_alloc_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_rule** @nf_tables_chain_alloc_rules(%struct.nft_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.nft_rule**, align 8
  %4 = alloca %struct.nft_chain*, align 8
  %5 = alloca i32, align 4
  store %struct.nft_chain* %0, %struct.nft_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.nft_rule** null, %struct.nft_rule*** %3, align 8
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @INT_MAX, align 4
  %14 = load i32, i32* %5, align 4
  %15 = udiv i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = icmp ugt i64 8, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.nft_rule** null, %struct.nft_rule*** %3, align 8
  br label %31

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.nft_rule** @kvmalloc(i32 %28, i32 %29)
  store %struct.nft_rule** %30, %struct.nft_rule*** %3, align 8
  br label %31

31:                                               ; preds = %19, %18, %9
  %32 = load %struct.nft_rule**, %struct.nft_rule*** %3, align 8
  ret %struct.nft_rule** %32
}

declare dso_local %struct.nft_rule** @kvmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
