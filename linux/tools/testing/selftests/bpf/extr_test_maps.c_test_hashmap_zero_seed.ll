; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_zero_seed.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_zero_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_flags = common dso_local global i32 0, align 4
@BPF_F_ZERO_SEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"next_key for second map must succeed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"key_ptr: %p\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"keys must match\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"i: %d first: %lld second: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hashmap_zero_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hashmap_zero_seed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @map_flags, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @BPF_F_ZERO_SEED, align 4
  %11 = load i32, i32* @map_flags, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @map_flags, align 4
  %13 = call i32 @helper_fill_hashmap(i32 3)
  store i32 %13, i32* %2, align 4
  %14 = call i32 @helper_fill_hashmap(i32 3)
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %46, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i64* [ null, %18 ], [ %5, %19 ]
  %22 = bitcast i64* %21 to i8*
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @bpf_map_get_next_key(i32 %23, i8* %24, i64* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %49

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @bpf_map_get_next_key(i32 %29, i8* %30, i64* %7)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %1, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %41, i64 %42, i64 %43)
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %15

49:                                               ; preds = %27
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* @map_flags, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @close(i32 %53)
  ret void
}

declare dso_local i32 @helper_fill_hashmap(i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i8*, i64*) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
