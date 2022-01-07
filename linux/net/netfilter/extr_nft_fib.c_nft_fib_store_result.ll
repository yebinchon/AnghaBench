; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_store_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_store_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_fib = type { i32, i32 }
%struct.net_device = type { i32, i8* }

@NFTA_FIB_F_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_fib_store_result(i8* %0, %struct.nft_fib* %1, %struct.net_device* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nft_fib*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nft_fib* %1, %struct.nft_fib** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.nft_fib*, %struct.nft_fib** %5, align 8
  %12 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %69 [
    i32 129, label %14
    i32 128, label %41
  ]

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nft_fib*, %struct.nft_fib** %5, align 8
  %25 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFTA_FIB_F_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %35, %30 ], [ %37, %36 ]
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %72

41:                                               ; preds = %3
  %42 = load %struct.nft_fib*, %struct.nft_fib** %5, align 8
  %43 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFTA_FIB_F_PRESENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = icmp ne %struct.net_device* %49, null
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %68

55:                                               ; preds = %41
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %63 ]
  %66 = load i32, i32* @IFNAMSIZ, align 4
  %67 = call i32 @strncpy(i8* %56, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %48
  br label %72

69:                                               ; preds = %3
  %70 = call i32 @WARN_ON_ONCE(i32 1)
  %71 = load i32*, i32** %7, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %68, %38
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
