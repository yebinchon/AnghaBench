; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_desc_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_set_desc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set_desc = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_SET_DESC_MAX = common dso_local global i32 0, align 4
@nft_set_desc_policy = common dso_local global i32 0, align 4
@NFTA_SET_DESC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set_desc*, %struct.nlattr*)* @nf_tables_set_desc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_set_desc_parse(%struct.nft_set_desc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_set_desc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nft_set_desc* %0, %struct.nft_set_desc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load i32, i32* @NFTA_SET_DESC_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @NFTA_SET_DESC_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = load i32, i32* @nft_set_desc_policy, align 4
  %18 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load i64, i64* @NFTA_SET_DESC_SIZE, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i64, i64* @NFTA_SET_DESC_SIZE, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_get_be32(%struct.nlattr* %31)
  %33 = call i32 @ntohl(i32 %32)
  %34 = load %struct.nft_set_desc*, %struct.nft_set_desc** %4, align 8
  %35 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

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
