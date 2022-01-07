; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_parallel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_map_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@MAP_SIZE = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to create map for parallel test '%s'!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@DO_UPDATE = common dso_local global i32 0, align 4
@TASKS = common dso_local global i32 0, align 4
@test_update_delete = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@DO_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map_parallel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %7 = load i32, i32* @MAP_SIZE, align 4
  %8 = load i32, i32* @map_flags, align 4
  %9 = call i32 @bpf_create_map(i32 %6, i32 4, i32 4, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i64, i64* @errno, align 8
  %14 = call i8* @strerror(i64 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @DO_UPDATE, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @TASKS, align 4
  %23 = load i32, i32* @test_update_delete, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = call i32 @run_parallel(i32 %22, i32 %23, i32* %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @BPF_NOEXIST, align 4
  %28 = call i32 @bpf_map_update_elem(i32 %26, i32* %3, i32* %4, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EEXIST, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi i1 [ false, %17 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @bpf_map_get_next_key(i32 %38, i32* null, i32* %3)
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %53, %34
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @MAP_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @bpf_map_get_next_key(i32 %48, i32* %3, i32* %3)
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %43

56:                                               ; preds = %43
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @bpf_map_get_next_key(i32 %57, i32* %3, i32* %3)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %88, %64
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @MAP_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32, i32* @MAP_SIZE, align 4
  %74 = load i32, i32* %1, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @bpf_map_lookup_elem(i32 %77, i32* %3, i32* %4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp eq i32 %81, %82
  br label %84

84:                                               ; preds = %80, %72
  %85 = phi i1 [ false, %72 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %1, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i32, i32* @DO_DELETE, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @TASKS, align 4
  %95 = load i32, i32* @test_update_delete, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %97 = call i32 @run_parallel(i32 %94, i32 %95, i32* %96)
  store i32 -1, i32* %3, align 4
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @bpf_map_get_next_key(i32 %98, i32* null, i32* %3)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ENOENT, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i1 [ false, %91 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @bpf_map_get_next_key(i32 %109, i32* %3, i32* %3)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @ENOENT, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %112, %105
  %117 = phi i1 [ false, %105 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @run_parallel(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
