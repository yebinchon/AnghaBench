; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rounded_hashtable_size.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rounded_hashtable_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_params = type { i32, i64 }

@HASH_DEFAULT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rhashtable_params*)* @rounded_hashtable_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rounded_hashtable_size(%struct.rhashtable_params* %0) #0 {
  %2 = alloca %struct.rhashtable_params*, align 8
  %3 = alloca i64, align 8
  store %struct.rhashtable_params* %0, %struct.rhashtable_params** %2, align 8
  %4 = load %struct.rhashtable_params*, %struct.rhashtable_params** %2, align 8
  %5 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.rhashtable_params*, %struct.rhashtable_params** %2, align 8
  %10 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 4
  %13 = sdiv i32 %12, 3
  %14 = call i32 @roundup_pow_of_two(i32 %13)
  %15 = load %struct.rhashtable_params*, %struct.rhashtable_params** %2, align 8
  %16 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @max(i32 %14, i64 %17)
  store i64 %18, i64* %3, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @HASH_DEFAULT_SIZE, align 4
  %21 = load %struct.rhashtable_params*, %struct.rhashtable_params** %2, align 8
  %22 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @max(i32 %20, i64 %23)
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %19, %8
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
