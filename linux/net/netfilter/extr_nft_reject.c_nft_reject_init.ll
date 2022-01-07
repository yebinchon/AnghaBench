; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_reject.c_nft_reject_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_reject.c_nft_reject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_reject = type { i32, i32 }

@NFTA_REJECT_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_REJECT_ICMP_CODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_reject_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_reject*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %10 = call %struct.nft_reject* @nft_expr_priv(%struct.nft_expr* %9)
  store %struct.nft_reject* %10, %struct.nft_reject** %8, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %12 = load i64, i64* @NFTA_REJECT_TYPE, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp eq %struct.nlattr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @NFTA_REJECT_TYPE, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @nla_get_be32(%struct.nlattr* %23)
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %27 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %29 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %49 [
    i32 129, label %31
    i32 128, label %48
  ]

31:                                               ; preds = %19
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @NFTA_REJECT_ICMP_CODE, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i64, i64* @NFTA_REJECT_ICMP_CODE, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_u8(%struct.nlattr* %44)
  %46 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %47 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %19, %40
  br label %52

49:                                               ; preds = %19
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %37, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.nft_reject* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
