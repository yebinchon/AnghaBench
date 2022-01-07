; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_expr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_register_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_type = type { i64, i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@nf_tables_expressions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_register_expr(%struct.nft_expr_type* %0) #0 {
  %2 = alloca %struct.nft_expr_type*, align 8
  store %struct.nft_expr_type* %0, %struct.nft_expr_type** %2, align 8
  %3 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %4 = call i32 @nfnl_lock(i32 %3)
  %5 = load %struct.nft_expr_type*, %struct.nft_expr_type** %2, align 8
  %6 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.nft_expr_type*, %struct.nft_expr_type** %2, align 8
  %12 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %11, i32 0, i32 1
  %13 = call i32 @list_add_tail_rcu(i32* %12, i32* @nf_tables_expressions)
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.nft_expr_type*, %struct.nft_expr_type** %2, align 8
  %16 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %15, i32 0, i32 1
  %17 = call i32 @list_add_rcu(i32* %16, i32* @nf_tables_expressions)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %20 = call i32 @nfnl_unlock(i32 %19)
  ret i32 0
}

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
