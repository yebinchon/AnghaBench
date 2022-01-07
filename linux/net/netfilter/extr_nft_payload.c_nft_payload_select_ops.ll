; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_PAYLOAD_BASE = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_OFFSET = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_PAYLOAD_SREG = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_DREG = common dso_local global i64 0, align 8
@nft_payload_set_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_payload_fast_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_payload_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_payload_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_payload_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %10 = load i64, i64* @NFTA_PAYLOAD_BASE, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @NFTA_PAYLOAD_OFFSET, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp eq %struct.nlattr* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @NFTA_PAYLOAD_LEN, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp eq %struct.nlattr* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.nft_expr_ops* @ERR_PTR(i32 %28)
  store %struct.nft_expr_ops* %29, %struct.nft_expr_ops** %3, align 8
  br label %102

30:                                               ; preds = %20
  %31 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %32 = load i64, i64* @NFTA_PAYLOAD_BASE, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_be32(%struct.nlattr* %34)
  %36 = call i8* @ntohl(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %40 [
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
  ]

39:                                               ; preds = %30, %30, %30
  br label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.nft_expr_ops* @ERR_PTR(i32 %42)
  store %struct.nft_expr_ops* %43, %struct.nft_expr_ops** %3, align 8
  br label %102

44:                                               ; preds = %39
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load i64, i64* @NFTA_PAYLOAD_SREG, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %52 = load i64, i64* @NFTA_PAYLOAD_DREG, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.nft_expr_ops* @ERR_PTR(i32 %58)
  store %struct.nft_expr_ops* %59, %struct.nft_expr_ops** %3, align 8
  br label %102

60:                                               ; preds = %50
  store %struct.nft_expr_ops* @nft_payload_set_ops, %struct.nft_expr_ops** %3, align 8
  br label %102

61:                                               ; preds = %44
  %62 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %63 = load i64, i64* @NFTA_PAYLOAD_DREG, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp eq %struct.nlattr* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.nft_expr_ops* @ERR_PTR(i32 %69)
  store %struct.nft_expr_ops* %70, %struct.nft_expr_ops** %3, align 8
  br label %102

71:                                               ; preds = %61
  %72 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %73 = load i64, i64* @NFTA_PAYLOAD_OFFSET, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_be32(%struct.nlattr* %75)
  %77 = call i8* @ntohl(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %80 = load i64, i64* @NFTA_PAYLOAD_LEN, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = call i32 @nla_get_be32(%struct.nlattr* %82)
  %84 = call i8* @ntohl(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ule i32 %86, 4
  br i1 %87, label %88, label %101

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @is_power_of_2(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @IS_ALIGNED(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 130
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store %struct.nft_expr_ops* @nft_payload_fast_ops, %struct.nft_expr_ops** %3, align 8
  br label %102

101:                                              ; preds = %97, %92, %88, %71
  store %struct.nft_expr_ops* @nft_payload_ops, %struct.nft_expr_ops** %3, align 8
  br label %102

102:                                              ; preds = %101, %100, %67, %60, %56, %40, %26
  %103 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %103
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
