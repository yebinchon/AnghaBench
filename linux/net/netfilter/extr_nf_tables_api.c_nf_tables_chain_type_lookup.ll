; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_type_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_chain_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain_type = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_chain_type* (%struct.net*, %struct.nlattr*, i32, i32)* @nf_tables_chain_type_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_chain_type* @nf_tables_chain_type_lookup(%struct.net* %0, %struct.nlattr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nft_chain_type*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_chain_type*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.nft_chain_type* @__nf_tables_chain_type_lookup(%struct.nlattr* %11, i32 %12)
  store %struct.nft_chain_type* %13, %struct.nft_chain_type** %10, align 8
  %14 = load %struct.nft_chain_type*, %struct.nft_chain_type** %10, align 8
  %15 = icmp ne %struct.nft_chain_type* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.nft_chain_type*, %struct.nft_chain_type** %10, align 8
  store %struct.nft_chain_type* %17, %struct.nft_chain_type** %5, align 8
  br label %23

18:                                               ; preds = %4
  %19 = call i32 (...) @lockdep_nfnl_nft_mutex_not_held()
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.nft_chain_type* @ERR_PTR(i32 %21)
  store %struct.nft_chain_type* %22, %struct.nft_chain_type** %5, align 8
  br label %23

23:                                               ; preds = %18, %16
  %24 = load %struct.nft_chain_type*, %struct.nft_chain_type** %5, align 8
  ret %struct.nft_chain_type* %24
}

declare dso_local %struct.nft_chain_type* @__nf_tables_chain_type_lookup(%struct.nlattr*, i32) #1

declare dso_local i32 @lockdep_nfnl_nft_mutex_not_held(...) #1

declare dso_local %struct.nft_chain_type* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
