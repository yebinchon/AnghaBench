; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_rule_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_rule_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_expr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_rule*)* @nf_tables_rule_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_rule_destroy(%struct.nft_ctx* %0, %struct.nft_rule* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_rule*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %4, align 8
  %7 = load %struct.nft_rule*, %struct.nft_rule** %4, align 8
  %8 = call %struct.nft_expr* @nft_expr_first(%struct.nft_rule* %7)
  store %struct.nft_expr* %8, %struct.nft_expr** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %11 = load %struct.nft_rule*, %struct.nft_rule** %4, align 8
  %12 = call %struct.nft_expr* @nft_expr_last(%struct.nft_rule* %11)
  %13 = icmp ne %struct.nft_expr* %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %16 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %23 = call %struct.nft_expr* @nft_expr_next(%struct.nft_expr* %22)
  store %struct.nft_expr* %23, %struct.nft_expr** %6, align 8
  %24 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %25 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %26 = call i32 @nf_tables_expr_destroy(%struct.nft_ctx* %24, %struct.nft_expr* %25)
  %27 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  store %struct.nft_expr* %27, %struct.nft_expr** %5, align 8
  br label %9

28:                                               ; preds = %19
  %29 = load %struct.nft_rule*, %struct.nft_rule** %4, align 8
  %30 = call i32 @kfree(%struct.nft_rule* %29)
  ret void
}

declare dso_local %struct.nft_expr* @nft_expr_first(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_last(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_next(%struct.nft_expr*) #1

declare dso_local i32 @nf_tables_expr_destroy(%struct.nft_ctx*, %struct.nft_expr*) #1

declare dso_local i32 @kfree(%struct.nft_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
