; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_exthdr.c_nft_exthdr_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_EXTHDR_OP = common dso_local global i64 0, align 8
@nft_exthdr_ipv6_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@NFTA_EXTHDR_SREG = common dso_local global i64 0, align 8
@NFTA_EXTHDR_DREG = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nft_exthdr_tcp_set_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_exthdr_tcp_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@nft_exthdr_ipv4_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_exthdr_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_exthdr_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @NFTA_EXTHDR_OP, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.nft_expr_ops* @nft_exthdr_ipv6_ops, %struct.nft_expr_ops** %3, align 8
  br label %79

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @NFTA_EXTHDR_SREG, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.nft_expr_ops* @ERR_PTR(i32 %27)
  store %struct.nft_expr_ops* %28, %struct.nft_expr_ops** %3, align 8
  br label %79

29:                                               ; preds = %19, %13
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @NFTA_EXTHDR_OP, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_get_be32(%struct.nlattr* %33)
  %35 = call i32 @ntohl(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %75 [
    i32 128, label %37
    i32 129, label %52
    i32 130, label %60
  ]

37:                                               ; preds = %29
  %38 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %39 = load i64, i64* @NFTA_EXTHDR_SREG, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store %struct.nft_expr_ops* @nft_exthdr_tcp_set_ops, %struct.nft_expr_ops** %3, align 8
  br label %79

44:                                               ; preds = %37
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.nft_expr_ops* @nft_exthdr_tcp_ops, %struct.nft_expr_ops** %3, align 8
  br label %79

51:                                               ; preds = %44
  br label %75

52:                                               ; preds = %29
  %53 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %54 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.nft_expr_ops* @nft_exthdr_ipv6_ops, %struct.nft_expr_ops** %3, align 8
  br label %79

59:                                               ; preds = %52
  br label %75

60:                                               ; preds = %29
  %61 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NFPROTO_IPV6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %68 = load i64, i64* @NFTA_EXTHDR_DREG, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store %struct.nft_expr_ops* @nft_exthdr_ipv4_ops, %struct.nft_expr_ops** %3, align 8
  br label %79

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %29, %74, %59, %51
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.nft_expr_ops* @ERR_PTR(i32 %77)
  store %struct.nft_expr_ops* %78, %struct.nft_expr_ops** %3, align 8
  br label %79

79:                                               ; preds = %75, %72, %58, %50, %43, %25, %12
  %80 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %80
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
