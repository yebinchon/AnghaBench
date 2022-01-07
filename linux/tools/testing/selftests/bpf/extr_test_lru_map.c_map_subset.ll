; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lru_map.c_map_subset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lru_map.c_map_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"key:%llu not found from map. %s(%d)\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"key:%llu value0:%llu != value1:%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @map_subset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_subset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @nr_cpus, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @nr_cpus, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  br label %19

19:                                               ; preds = %54, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @bpf_map_get_next_key(i32 %20, i64* %6, i64* %6)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @bpf_map_lookup_elem(i32 %25, i64* %6, i64* %18)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bpf_map_lookup_elem(i32 %31, i64* %6, i64* %15)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @errno, align 8
  %38 = call i64 @strerror(i64 %37)
  %39 = load i64, i64* @errno, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %38, i64 %39)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

41:                                               ; preds = %24
  %42 = getelementptr inbounds i64, i64* %15, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds i64, i64* %18, i64 0
  %45 = load i64, i64* %44, align 16
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i64, i64* %15, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = getelementptr inbounds i64, i64* %18, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %50, i64 %52)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

54:                                               ; preds = %41
  br label %19

55:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %47, %35
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_map_get_next_key(i32, i64*, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #2

declare dso_local i32 @printf(i8*, i64, i64, i64) #2

declare dso_local i64 @strerror(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
