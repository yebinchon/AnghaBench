; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }
%struct.nft_fib = type { i32, i32 }

@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@NFTA_FIB_F_IIF = common dso_local global i32 0, align 4
@NF_INET_LOCAL_IN = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@NFTA_FIB_F_OIF = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_fib_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_data**, align 8
  %8 = alloca %struct.nft_fib*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_fib* %11, %struct.nft_fib** %8, align 8
  %12 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %13 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %67 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %18
  ]

15:                                               ; preds = %3, %3
  %16 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %9, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %20 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @NF_INET_FORWARD, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  store i32 %33, i32* %9, align 4
  br label %66

34:                                               ; preds = %18
  %35 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %36 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @NF_INET_FORWARD, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  store i32 %49, i32* %9, align 4
  br label %65

50:                                               ; preds = %34
  %51 = load i32, i32* @NF_INET_LOCAL_IN, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @NF_INET_FORWARD, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %50, %41
  br label %66

66:                                               ; preds = %65, %25
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %66, %15
  %71 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @nft_chain_validate_hooks(i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_chain_validate_hooks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
