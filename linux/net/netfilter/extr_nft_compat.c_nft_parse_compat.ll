; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_parse_compat.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_parse_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@NFTA_RULE_COMPAT_MAX = common dso_local global i32 0, align 4
@nft_rule_compat_policy = common dso_local global i32 0, align 4
@NFTA_RULE_COMPAT_PROTO = common dso_local global i64 0, align 8
@NFTA_RULE_COMPAT_FLAGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFT_RULE_COMPAT_F_MASK = common dso_local global i32 0, align 4
@NFT_RULE_COMPAT_F_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i8**, i32*)* @nft_parse_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_parse_compat(%struct.nlattr* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @NFTA_RULE_COMPAT_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @NFTA_RULE_COMPAT_MAX, align 4
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = load i32, i32* @nft_rule_compat_policy, align 4
  %21 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %18, %struct.nlattr* %19, i32 %20, i32* null)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load i64, i64* @NFTA_RULE_COMPAT_PROTO, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i64, i64* @NFTA_RULE_COMPAT_FLAGS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

39:                                               ; preds = %31
  %40 = load i64, i64* @NFTA_RULE_COMPAT_FLAGS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_be32(%struct.nlattr* %42)
  %44 = call i8* @ntohl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NFT_RULE_COMPAT_F_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NFT_RULE_COMPAT_F_INV, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i64, i64* @NFTA_RULE_COMPAT_PROTO, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_be32(%struct.nlattr* %64)
  %66 = call i8* @ntohl(i32 %65)
  %67 = load i8**, i8*** %6, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %61, %51, %36, %24
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
