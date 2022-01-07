; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c___hmac_get_algo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c___hmac_get_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_hmac_algo = type { i64 }

@hmac_algos = common dso_local global %struct.seg6_hmac_algo* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.seg6_hmac_algo* (i64)* @__hmac_get_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.seg6_hmac_algo* @__hmac_get_algo(i64 %0) #0 {
  %2 = alloca %struct.seg6_hmac_algo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.seg6_hmac_algo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** @hmac_algos, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.seg6_hmac_algo* %7)
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** @hmac_algos, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.seg6_hmac_algo, %struct.seg6_hmac_algo* %14, i64 %16
  store %struct.seg6_hmac_algo* %17, %struct.seg6_hmac_algo** %4, align 8
  %18 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %4, align 8
  %19 = getelementptr inbounds %struct.seg6_hmac_algo, %struct.seg6_hmac_algo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %4, align 8
  store %struct.seg6_hmac_algo* %24, %struct.seg6_hmac_algo** %2, align 8
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %9

29:                                               ; preds = %9
  store %struct.seg6_hmac_algo* null, %struct.seg6_hmac_algo** %2, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.seg6_hmac_algo*, %struct.seg6_hmac_algo** %2, align 8
  ret %struct.seg6_hmac_algo* %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.seg6_hmac_algo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
