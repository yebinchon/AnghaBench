; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_queue = type { i32, i32, i32 }

@NFTA_QUEUE_NUM = common dso_local global i64 0, align 8
@NFTA_QUEUE_TOTAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@NFTA_QUEUE_FLAGS = common dso_local global i64 0, align 8
@NFT_QUEUE_FLAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_queue_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_queue*, align 8
  %9 = alloca i64, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_queue* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_queue* %11, %struct.nft_queue** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_QUEUE_NUM, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nla_get_be16(%struct.nlattr* %15)
  %17 = call i8* @ntohs(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %20 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %22 = load i64, i64* @NFTA_QUEUE_TOTAL, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = load i64, i64* @NFTA_QUEUE_TOTAL, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_be16(%struct.nlattr* %30)
  %32 = call i8* @ntohs(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %35 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %38 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %41 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %91

47:                                               ; preds = %39
  %48 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %49 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %53 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @U16_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @ERANGE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %91

63:                                               ; preds = %47
  %64 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %65 = load i64, i64* @NFTA_QUEUE_FLAGS, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %71 = load i64, i64* @NFTA_QUEUE_FLAGS, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i32 @nla_get_be16(%struct.nlattr* %73)
  %75 = call i8* @ntohs(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %78 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %80 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NFT_QUEUE_FLAG_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %63
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %86, %60, %44
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.nft_queue* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
