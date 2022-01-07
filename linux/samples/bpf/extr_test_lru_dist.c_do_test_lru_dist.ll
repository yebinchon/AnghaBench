; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_do_test_lru_dist.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_do_test_lru_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfect_lru = type { i32, i32, i32 }

@dist_key_counts = common dso_local global i32 0, align 4
@dist_keys = common dso_local global i64* null, align 8
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"bpf_map_update_elem(lru_map_fd, %llu): errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"    task:%d BPF LRU: nr_unique:%u(/%u) nr_misses:%u(/%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"    task:%d Perfect LRU: nr_unique:%u(/%u) nr_misses:%u(/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @do_test_lru_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_lru_dist(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfect_lru, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 1234, i64* %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @dist_key_counts, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @dist_key_counts, align 4
  %27 = call i32 @pfect_lru_init(%struct.pfect_lru* %6, i32 %25, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %60, %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @dist_key_counts, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load i64*, i64** @dist_keys, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @pfect_lru_lookup_or_insert(%struct.pfect_lru* %6, i64 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @bpf_map_lookup_elem(i32 %42, i64* %7, i64* %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %60

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BPF_NOEXIST, align 4
  %49 = call i64 @bpf_map_update_elem(i32 %47, i64* %7, i64* %8, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = call i32 @assert(i32 0)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %28

63:                                               ; preds = %28
  %64 = load i32, i32* %3, align 4
  %65 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @dist_key_counts, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @dist_key_counts, align 4
  %70 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.pfect_lru, %struct.pfect_lru* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73, i32 %75, i32 %77, i32 %79)
  %81 = call i32 @pfect_lru_destroy(%struct.pfect_lru* %6)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @close(i32 %82)
  ret void
}

declare dso_local i32 @pfect_lru_init(%struct.pfect_lru*, i32, i32) #1

declare dso_local i32 @pfect_lru_lookup_or_insert(%struct.pfect_lru*, i64) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i64 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pfect_lru_destroy(%struct.pfect_lru*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
