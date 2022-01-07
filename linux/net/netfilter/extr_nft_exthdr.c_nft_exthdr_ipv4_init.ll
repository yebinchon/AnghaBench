; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv4_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_ipv4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_exthdr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_exthdr_ipv4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_exthdr_ipv4_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_exthdr*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_exthdr* %11, %struct.nft_exthdr** %8, align 8
  %12 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = call i32 @nft_exthdr_init(%struct.nft_ctx* %12, %struct.nft_expr* %13, %struct.nlattr** %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.nft_exthdr*, %struct.nft_exthdr** %8, align 8
  %22 = getelementptr inbounds %struct.nft_exthdr, %struct.nft_exthdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %25 [
    i32 128, label %24
    i32 131, label %24
    i32 129, label %24
    i32 130, label %24
  ]

24:                                               ; preds = %20, %20, %20, %20
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.nft_exthdr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_exthdr_init(%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
