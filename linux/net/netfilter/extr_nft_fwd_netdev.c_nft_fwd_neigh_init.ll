; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_neigh_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_neigh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_fwd_neigh = type { i32, i8*, i8* }

@NFTA_FWD_SREG_DEV = common dso_local global i64 0, align 8
@NFTA_FWD_SREG_ADDR = common dso_local global i64 0, align 8
@NFTA_FWD_NFPROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_fwd_neigh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_fwd_neigh_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_fwd_neigh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_fwd_neigh* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_fwd_neigh* %12, %struct.nft_fwd_neigh** %8, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @NFTA_FWD_SREG_DEV, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @NFTA_FWD_SREG_ADDR, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @NFTA_FWD_NFPROTO, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %18, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %35 = load i64, i64* @NFTA_FWD_SREG_DEV, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i8* @nft_parse_register(%struct.nlattr* %37)
  %39 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %40 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i64, i64* @NFTA_FWD_SREG_ADDR, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i8* @nft_parse_register(%struct.nlattr* %44)
  %46 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %47 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %49 = load i64, i64* @NFTA_FWD_NFPROTO, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_get_be32(%struct.nlattr* %51)
  %53 = call i32 @ntohl(i32 %52)
  %54 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %55 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %57 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %61 [
    i32 129, label %59
    i32 128, label %60
  ]

59:                                               ; preds = %33
  store i32 4, i32* %9, align 4
  br label %64

60:                                               ; preds = %33
  store i32 4, i32* %9, align 4
  br label %64

61:                                               ; preds = %33
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %60, %59
  %65 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %66 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @nft_validate_register_load(i8* %67, i32 4)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %64
  %74 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %8, align 8
  %75 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nft_validate_register_load(i8* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %71, %61, %30
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.nft_fwd_neigh* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
