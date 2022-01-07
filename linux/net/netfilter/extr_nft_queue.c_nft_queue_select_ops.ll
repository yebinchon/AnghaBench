; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_select_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_select_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_ops = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }

@NFTA_QUEUE_NUM = common dso_local global i64 0, align 8
@NFTA_QUEUE_SREG_QNUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@jhash_initval = common dso_local global i32 0, align 4
@nft_queue_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@nft_queue_sreg_ops = common dso_local global %struct.nft_expr_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_ops* (%struct.nft_ctx*, %struct.nlattr**)* @nft_queue_select_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_ops* @nft_queue_select_ops(%struct.nft_ctx* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.nft_expr_ops*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @NFTA_QUEUE_NUM, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @NFTA_QUEUE_SREG_QNUM, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.nft_expr_ops* @ERR_PTR(i32 %19)
  store %struct.nft_expr_ops* %20, %struct.nft_expr_ops** %3, align 8
  br label %40

21:                                               ; preds = %11, %2
  %22 = call i32 @init_hashrandom(i32* @jhash_initval)
  %23 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %24 = load i64, i64* @NFTA_QUEUE_NUM, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.nft_expr_ops* @nft_queue_ops, %struct.nft_expr_ops** %3, align 8
  br label %40

29:                                               ; preds = %21
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @NFTA_QUEUE_SREG_QNUM, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.nft_expr_ops* @nft_queue_sreg_ops, %struct.nft_expr_ops** %3, align 8
  br label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.nft_expr_ops* @ERR_PTR(i32 %38)
  store %struct.nft_expr_ops* %39, %struct.nft_expr_ops** %3, align 8
  br label %40

40:                                               ; preds = %36, %35, %28, %17
  %41 = load %struct.nft_expr_ops*, %struct.nft_expr_ops** %3, align 8
  ret %struct.nft_expr_ops* %41
}

declare dso_local %struct.nft_expr_ops* @ERR_PTR(i32) #1

declare dso_local i32 @init_hashrandom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
