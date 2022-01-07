; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_sreg_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_sreg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_queue = type { i32, i32 }

@NFTA_QUEUE_SREG_QNUM = common dso_local global i64 0, align 8
@NFTA_QUEUE_FLAGS = common dso_local global i64 0, align 8
@NFT_QUEUE_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFT_QUEUE_FLAG_CPU_FANOUT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_queue_sreg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_queue_sreg_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_queue* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_queue* %11, %struct.nft_queue** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_QUEUE_SREG_QNUM, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nft_parse_register(%struct.nlattr* %15)
  %17 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %18 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %20 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nft_validate_register_load(i32 %21, i32 4)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = load i64, i64* @NFTA_QUEUE_FLAGS, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %35 = load i64, i64* @NFTA_QUEUE_FLAGS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nla_get_be16(%struct.nlattr* %37)
  %39 = call i32 @ntohs(i32 %38)
  %40 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %41 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %43 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFT_QUEUE_FLAG_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %33
  %53 = load %struct.nft_queue*, %struct.nft_queue** %8, align 8
  %54 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NFT_QUEUE_FLAG_CPU_FANOUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %27
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %59, %49, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.nft_queue* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
