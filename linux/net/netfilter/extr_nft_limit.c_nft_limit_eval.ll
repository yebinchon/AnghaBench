; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_limit = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_limit*, i64)* @nft_limit_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_limit_eval(%struct.nft_limit* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_limit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nft_limit* %0, %struct.nft_limit** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %10 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = call i64 (...) @ktime_get_ns()
  store i64 %12, i64* %6, align 8
  %13 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %14 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %19 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %24 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %29 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %34 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %43 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %45 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %44, i32 0, i32 4
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %48 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %31
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %53 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %55 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %54, i32 0, i32 4
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.nft_limit*, %struct.nft_limit** %4, align 8
  %58 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %40
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
