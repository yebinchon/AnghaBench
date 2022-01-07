; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmark_tuple = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xt_hmark_info = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hmark_tuple*, %struct.xt_hmark_info*)* @hmark_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hmark_hash(%struct.hmark_tuple* %0, %struct.xt_hmark_info* %1) #0 {
  %3 = alloca %struct.hmark_tuple*, align 8
  %4 = alloca %struct.xt_hmark_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hmark_tuple* %0, %struct.hmark_tuple** %3, align 8
  store %struct.xt_hmark_info* %1, %struct.xt_hmark_info** %4, align 8
  %8 = load %struct.hmark_tuple*, %struct.hmark_tuple** %3, align 8
  %9 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @ntohl(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hmark_tuple*, %struct.hmark_tuple** %3, align 8
  %13 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohl(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @swap(i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.hmark_tuple*, %struct.hmark_tuple** %3, align 8
  %27 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %31 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @jhash_3words(i64 %24, i64 %25, i32 %29, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.hmark_tuple*, %struct.hmark_tuple** %3, align 8
  %36 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %39 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %37, %40
  %42 = xor i64 %34, %41
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %45 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @reciprocal_scale(i64 %43, i32 %46)
  %48 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %49 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  ret i64 %51
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i64 @jhash_3words(i64, i64, i32, i32) #1

declare dso_local i64 @reciprocal_scale(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
