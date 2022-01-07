; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_expr_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_rule_expr_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nft_ctx*, %struct.nft_expr*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_rule*)* @nft_rule_expr_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_rule_expr_activate(%struct.nft_ctx* %0, %struct.nft_rule* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_rule*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %4, align 8
  %6 = load %struct.nft_rule*, %struct.nft_rule** %4, align 8
  %7 = call %struct.nft_expr* @nft_expr_first(%struct.nft_rule* %6)
  store %struct.nft_expr* %7, %struct.nft_expr** %5, align 8
  br label %8

8:                                                ; preds = %36, %2
  %9 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %10 = load %struct.nft_rule*, %struct.nft_rule** %4, align 8
  %11 = call %struct.nft_expr* @nft_expr_last(%struct.nft_rule* %10)
  %12 = icmp ne %struct.nft_expr* %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %15 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %39

20:                                               ; preds = %18
  %21 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %22 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %24, align 8
  %26 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_expr*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %29 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %31, align 8
  %33 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %34 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %35 = call i32 %32(%struct.nft_ctx* %33, %struct.nft_expr* %34)
  br label %36

36:                                               ; preds = %27, %20
  %37 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %38 = call %struct.nft_expr* @nft_expr_next(%struct.nft_expr* %37)
  store %struct.nft_expr* %38, %struct.nft_expr** %5, align 8
  br label %8

39:                                               ; preds = %18
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
