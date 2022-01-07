; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_helper_fill_hashmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_helper_fill_hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create hashmap\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"err: %s, flags: 0x%x\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"can't update hashmap\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"err: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @helper_fill_hashmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_fill_hashmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @map_flags, align 4
  %11 = call i32 @bpf_create_map(i32 %8, i32 8, i32 8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = load i32, i32* @map_flags, align 4
  %18 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BPF_NOEXIST, align 4
  %29 = call i32 @bpf_map_update_elem(i32 %27, i64* %6, i64* %7, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
