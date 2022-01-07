; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_type_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_type_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr_type = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_expr_type* (%struct.net*, i32, %struct.nlattr*)* @nft_expr_type_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_expr_type* @nft_expr_type_get(%struct.net* %0, i32 %1, %struct.nlattr* %2) #0 {
  %4 = alloca %struct.nft_expr_type*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nft_expr_type*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %10 = icmp eq %struct.nlattr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.nft_expr_type* @ERR_PTR(i32 %13)
  store %struct.nft_expr_type* %14, %struct.nft_expr_type** %4, align 8
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %18 = call %struct.nft_expr_type* @__nft_expr_type_get(i32 %16, %struct.nlattr* %17)
  store %struct.nft_expr_type* %18, %struct.nft_expr_type** %8, align 8
  %19 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %20 = icmp ne %struct.nft_expr_type* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  %23 = getelementptr inbounds %struct.nft_expr_type, %struct.nft_expr_type* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @try_module_get(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.nft_expr_type*, %struct.nft_expr_type** %8, align 8
  store %struct.nft_expr_type* %28, %struct.nft_expr_type** %4, align 8
  br label %34

29:                                               ; preds = %21, %15
  %30 = call i32 (...) @lockdep_nfnl_nft_mutex_not_held()
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.nft_expr_type* @ERR_PTR(i32 %32)
  store %struct.nft_expr_type* %33, %struct.nft_expr_type** %4, align 8
  br label %34

34:                                               ; preds = %29, %27, %11
  %35 = load %struct.nft_expr_type*, %struct.nft_expr_type** %4, align 8
  ret %struct.nft_expr_type* %35
}

declare dso_local %struct.nft_expr_type* @ERR_PTR(i32) #1

declare dso_local %struct.nft_expr_type* @__nft_expr_type_get(i32, %struct.nlattr*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @lockdep_nfnl_nft_mutex_not_held(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
