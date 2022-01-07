; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_walk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_hashmap_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hashmap_walk(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1000, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @helper_fill_hashmap(i32 %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i64* [ null, %18 ], [ %8, %19 ]
  %22 = call i64 @bpf_map_get_next_key(i32 %15, i64* %21, i64* %10)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @bpf_map_lookup_elem(i32 %26, i64* %8, i64* %9)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @bpf_map_get_next_key(i32 %40, i64* null, i64* %8)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %67, %34
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @bpf_map_get_next_key(i32 %49, i64* %8, i64* %10)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @bpf_map_lookup_elem(i32 %53, i64* %8, i64* %9)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BPF_EXIST, align 4
  %62 = call i64 @bpf_map_update_elem(i32 %60, i64* %8, i64* %9, i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %99, %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i64* [ null, %80 ], [ %8, %81 ]
  %84 = call i64 @bpf_map_get_next_key(i32 %77, i64* %83, i64* %10)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %8, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @bpf_map_lookup_elem(i32 %88, i64* %8, i64* %9)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* %9, align 8
  %94 = sub nsw i64 %93, 1
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %76

102:                                              ; preds = %82
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @close(i32 %108)
  ret void
}

declare dso_local i32 @helper_fill_hashmap(i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i64 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
