; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ng_inc = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nft_ng_inc*)* @nft_ng_inc_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nft_ng_inc_gen(%struct.nft_ng_inc* %0) #0 {
  %2 = alloca %struct.nft_ng_inc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.nft_ng_inc* %0, %struct.nft_ng_inc** %2, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %2, align 8
  %7 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %6, i32 0, i32 2
  %8 = call i64 @atomic_read(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add nsw i64 %9, 1
  %11 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %2, align 8
  %12 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, 1
  br label %19

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i64 [ %17, %15 ], [ 0, %18 ]
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %19
  %22 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %2, align 8
  %23 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %22, i32 0, i32 2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @atomic_cmpxchg(i32* %23, i64 %24, i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %5, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %2, align 8
  %32 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  ret i64 %34
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
