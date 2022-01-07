; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_fib = type { i32, i32, i32 }

@NFTA_FIB_DREG = common dso_local global i32 0, align 4
@NFTA_FIB_RESULT = common dso_local global i32 0, align 4
@NFTA_FIB_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_fib_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_fib*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_fib* %8, %struct.nft_fib** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_FIB_DREG, align 4
  %11 = load %struct.nft_fib*, %struct.nft_fib** %6, align 8
  %12 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_FIB_RESULT, align 4
  %20 = load %struct.nft_fib*, %struct.nft_fib** %6, align 8
  %21 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htonl(i32 %22)
  %24 = call i64 @nla_put_be32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %38

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @NFTA_FIB_FLAGS, align 4
  %30 = load %struct.nft_fib*, %struct.nft_fib** %6, align 8
  %31 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @htonl(i32 %32)
  %34 = call i64 @nla_put_be32(%struct.sk_buff* %28, i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %26, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
