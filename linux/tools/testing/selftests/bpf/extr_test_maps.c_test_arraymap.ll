; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_arraymap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_arraymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to create arraymap '%s'!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@BPF_EXIST = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_arraymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_arraymap(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %10 = call i32 @bpf_create_map(i32 %9, i32 4, i32 8, i32 2, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* @errno, align 8
  %15 = call i8* @strerror(i64 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  store i64 1234, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BPF_ANY, align 4
  %21 = call i32 @bpf_map_update_elem(i32 %19, i32* %5, i64* %8, i32 %20)
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i64 0, i64* %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BPF_NOEXIST, align 4
  %27 = call i32 @bpf_map_update_elem(i32 %25, i32* %5, i64* %8, i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EEXIST, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i1 [ false, %18 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bpf_map_lookup_elem(i32 %37, i32* %5, i64* %8)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 1234
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i1 [ false, %33 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  store i32 0, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @bpf_map_lookup_elem(i32 %47, i32* %5, i64* %8)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 0
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i1 [ false, %43 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i32 2, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BPF_EXIST, align 4
  %59 = call i32 @bpf_map_update_elem(i32 %57, i32* %5, i64* %8, i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @E2BIG, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %53
  %66 = phi i1 [ false, %53 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @bpf_map_lookup_elem(i32 %69, i32* %5, i64* %8)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @ENOENT, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i1 [ false, %65 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @bpf_map_get_next_key(i32 %80, i32* null, i32* %6)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i1 [ false, %76 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @bpf_map_get_next_key(i32 %90, i32* %5, i32* %6)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  br label %96

96:                                               ; preds = %93, %86
  %97 = phi i1 [ false, %86 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @bpf_map_get_next_key(i32 %100, i32* %6, i32* %6)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 1
  br label %106

106:                                              ; preds = %103, %96
  %107 = phi i1 [ false, %96 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @bpf_map_get_next_key(i32 %110, i32* %6, i32* %6)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @ENOENT, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %113, %106
  %118 = phi i1 [ false, %106 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  store i32 1, i32* %5, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @bpf_map_delete_elem(i32 %121, i32* %5)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @EINVAL, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %124, %117
  %129 = phi i1 [ false, %117 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @close(i32 %132)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i64*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
