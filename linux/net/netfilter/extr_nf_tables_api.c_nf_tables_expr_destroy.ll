; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_expr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_expr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nft_ctx*, %struct.nft_expr*)*, %struct.nft_expr_type* }
%struct.nft_expr_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_expr*)* @nf_tables_expr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_tables_expr_destroy(%struct.nft_ctx* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca %struct.nft_ctx*, align 8
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_expr_type*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %3, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %4, align 8
  %6 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %7 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.nft_expr_type*, %struct.nft_expr_type** %9, align 8
  store %struct.nft_expr_type* %10, %struct.nft_expr_type** %5, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %14, align 8
  %16 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_expr*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %19 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nft_ctx*, %struct.nft_expr*)*, i32 (%struct.nft_ctx*, %struct.nft_expr*)** %21, align 8
  %23 = load %struct.nft_ctx*, %struct.nft_ctx** %3, align 8
  %24 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %25 = call i32 %22(%struct.nft_ctx* %23, %struct.nft_expr* %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.nft_expr_type*, %struct.nft_expr_type** %5, align 8
  %28 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @module_put(i32 %29)
  ret void
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
