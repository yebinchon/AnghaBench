; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_expr_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_expr_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_rule*, i32)* @nft_rule_expr_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_rule_expr_deactivate(%struct.nft_ctx* %0, %struct.nft_rule* %1, i32 %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_expr*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %9 = call %struct.nft_expr* @nft_expr_first(%struct.nft_rule* %8)
  store %struct.nft_expr* %9, %struct.nft_expr** %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %12 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %13 = call %struct.nft_expr* @nft_expr_last(%struct.nft_rule* %12)
  %14 = icmp ne %struct.nft_expr* %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %17 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  %23 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %24 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)*, i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %31 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)*, i32 (%struct.nft_ctx*, %struct.nft_expr*, i32)** %33, align 8
  %35 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %36 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 %34(%struct.nft_ctx* %35, %struct.nft_expr* %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %22
  %40 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %41 = call %struct.nft_expr* @nft_expr_next(%struct.nft_expr* %40)
  store %struct.nft_expr* %41, %struct.nft_expr** %7, align 8
  br label %10

42:                                               ; preds = %20
  ret void
}

declare dso_local %struct.nft_expr* @nft_expr_first(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_last(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_next(%struct.nft_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
