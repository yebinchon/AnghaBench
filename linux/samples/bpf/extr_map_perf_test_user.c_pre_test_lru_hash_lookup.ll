; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_pre_test_lru_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_pre_test_lru_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_fd = common dso_local global i32* null, align 8
@lru_hash_lookup_idx = common dso_local global i64 0, align 8
@num_map_entries = common dso_local global i64 0, align 8
@lru_hash_lookup_test_entries = common dso_local global i64 0, align 8
@BPF_NOEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pre_test_lru_hash_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_test_lru_hash_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32*, i32** @map_fd, align 8
  %9 = load i64, i64* @lru_hash_lookup_idx, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i64 1, i64* %6, align 8
  %12 = load i64, i64* @num_map_entries, align 8
  %13 = load i64, i64* @lru_hash_lookup_test_entries, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @num_map_entries, align 8
  store i64 %16, i64* @lru_hash_lookup_test_entries, align 8
  br label %17

17:                                               ; preds = %15, %1
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @lru_hash_lookup_test_entries, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BPF_NOEXIST, align 4
  %25 = call i32 @bpf_map_update_elem(i32 %23, i64* %5, i64* %6, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %18

34:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
