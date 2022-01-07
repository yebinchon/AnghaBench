; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__snoop_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__snoop_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %union.perf_mem_data_src }
%union.perf_mem_data_src = type { i8* }

@PERF_MEM_SNOOP_NA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__snoop_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__snoop_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %union.perf_mem_data_src, align 8
  %6 = alloca %union.perf_mem_data_src, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast %union.perf_mem_data_src* %5 to i8*
  %17 = bitcast %union.perf_mem_data_src* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  br label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** @PERF_MEM_SNOOP_NA, align 8
  %20 = bitcast %union.perf_mem_data_src* %5 to i8**
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast %union.perf_mem_data_src* %6 to i8*
  %32 = bitcast %union.perf_mem_data_src* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  br label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** @PERF_MEM_SNOOP_NA, align 8
  %35 = bitcast %union.perf_mem_data_src* %6 to i8**
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = bitcast %union.perf_mem_data_src* %6 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast %union.perf_mem_data_src* %5 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %38 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
