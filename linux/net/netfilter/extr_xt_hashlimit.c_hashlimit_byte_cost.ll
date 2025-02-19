; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_byte_cost.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_byte_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsthash_ent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@CREDITS_PER_JIFFY_BYTES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dsthash_ent*)* @hashlimit_byte_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_byte_cost(i32 %0, %struct.dsthash_ent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsthash_ent*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dsthash_ent* %1, %struct.dsthash_ent** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @xt_hashlimit_len_to_chunks(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %10 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CREDITS_PER_JIFFY_BYTES, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %15, %16
  %18 = icmp sgt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @CREDITS_PER_JIFFY_BYTES, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %28 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %35 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %41 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* @CREDITS_PER_JIFFY_BYTES, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %49 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %39, %33, %26
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @xt_hashlimit_len_to_chunks(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
