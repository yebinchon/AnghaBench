; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_process_basic_block.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_process_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_map_symbol = type { i64, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.branch_flags = type { i64 }
%struct.annotation = type { i32 }
%struct.block_range_iter = type { i32 }
%struct.block_range = type { i32, i32, i32, i32, %struct.symbol*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addr_map_symbol*, %struct.addr_map_symbol*, %struct.branch_flags*)* @process_basic_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_basic_block(%struct.addr_map_symbol* %0, %struct.addr_map_symbol* %1, %struct.branch_flags* %2) #0 {
  %4 = alloca %struct.addr_map_symbol*, align 8
  %5 = alloca %struct.addr_map_symbol*, align 8
  %6 = alloca %struct.branch_flags*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.annotation*, align 8
  %9 = alloca %struct.block_range_iter, align 4
  %10 = alloca %struct.block_range*, align 8
  %11 = alloca %struct.block_range_iter, align 4
  store %struct.addr_map_symbol* %0, %struct.addr_map_symbol** %4, align 8
  store %struct.addr_map_symbol* %1, %struct.addr_map_symbol** %5, align 8
  store %struct.branch_flags* %2, %struct.branch_flags** %6, align 8
  %12 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %13 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  %14 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %14, %struct.symbol** %7, align 8
  %15 = load %struct.symbol*, %struct.symbol** %7, align 8
  %16 = icmp ne %struct.symbol* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.symbol*, %struct.symbol** %7, align 8
  %19 = call %struct.annotation* @symbol__annotation(%struct.symbol* %18)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi %struct.annotation* [ %19, %17 ], [ null, %20 ]
  store %struct.annotation* %22, %struct.annotation** %8, align 8
  %23 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %24 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %29 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %5, align 8
  %32 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %21
  br label %104

36:                                               ; preds = %27
  %37 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %38 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %5, align 8
  %41 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @block_range__create(i64 %39, i64 %42)
  %44 = getelementptr inbounds %struct.block_range_iter, %struct.block_range_iter* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.block_range_iter* %9 to i8*
  %46 = bitcast %struct.block_range_iter* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = call i32 @block_range_iter__valid(%struct.block_range_iter* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %104

50:                                               ; preds = %36
  %51 = call %struct.block_range* @block_range_iter(%struct.block_range_iter* %9)
  store %struct.block_range* %51, %struct.block_range** %10, align 8
  %52 = load %struct.block_range*, %struct.block_range** %10, align 8
  %53 = getelementptr inbounds %struct.block_range, %struct.block_range* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.block_range*, %struct.block_range** %10, align 8
  %57 = getelementptr inbounds %struct.block_range, %struct.block_range* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %82, %50
  %61 = call %struct.block_range* @block_range_iter(%struct.block_range_iter* %9)
  store %struct.block_range* %61, %struct.block_range** %10, align 8
  %62 = load %struct.block_range*, %struct.block_range** %10, align 8
  %63 = getelementptr inbounds %struct.block_range, %struct.block_range* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.symbol*, %struct.symbol** %7, align 8
  %67 = load %struct.block_range*, %struct.block_range** %10, align 8
  %68 = getelementptr inbounds %struct.block_range, %struct.block_range* %67, i32 0, i32 4
  store %struct.symbol* %66, %struct.symbol** %68, align 8
  %69 = load %struct.annotation*, %struct.annotation** %8, align 8
  %70 = icmp ne %struct.annotation* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.annotation*, %struct.annotation** %8, align 8
  %73 = getelementptr inbounds %struct.annotation, %struct.annotation* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.block_range*, %struct.block_range** %10, align 8
  %76 = getelementptr inbounds %struct.block_range, %struct.block_range* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @max(i32 %74, i32 %77)
  %79 = load %struct.annotation*, %struct.annotation** %8, align 8
  %80 = getelementptr inbounds %struct.annotation, %struct.annotation* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %60
  br label %82

82:                                               ; preds = %81
  %83 = call i64 @block_range_iter__next(%struct.block_range_iter* %9)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %60, label %85

85:                                               ; preds = %82
  %86 = call %struct.block_range* @block_range_iter(%struct.block_range_iter* %9)
  store %struct.block_range* %86, %struct.block_range** %10, align 8
  %87 = load %struct.block_range*, %struct.block_range** %10, align 8
  %88 = getelementptr inbounds %struct.block_range, %struct.block_range* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.block_range*, %struct.block_range** %10, align 8
  %92 = getelementptr inbounds %struct.block_range, %struct.block_range* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.branch_flags*, %struct.branch_flags** %6, align 8
  %96 = getelementptr inbounds %struct.branch_flags, %struct.branch_flags* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %85
  %100 = load %struct.block_range*, %struct.block_range** %10, align 8
  %101 = getelementptr inbounds %struct.block_range, %struct.block_range* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %35, %49, %99, %85
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @block_range__create(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @block_range_iter__valid(%struct.block_range_iter*) #1

declare dso_local %struct.block_range* @block_range_iter(%struct.block_range_iter*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @block_range_iter__next(%struct.block_range_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
