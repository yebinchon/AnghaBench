; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_bpf_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_bpf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bpf_prog_info_node = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@DSO__DATA_CACHE_SIZE = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i64, i8*)* @bpf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_read(%struct.dso* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_prog_info_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @DSO__DATA_CACHE_SIZE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dso*, %struct.dso** %5, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dso*, %struct.dso** %5, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.bpf_prog_info_node* @perf_env__find_bpf_prog_info(i32 %16, i32 %20)
  store %struct.bpf_prog_info_node* %21, %struct.bpf_prog_info_node** %8, align 8
  %22 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %8, align 8
  %23 = icmp ne %struct.bpf_prog_info_node* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %8, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_info_node, %struct.bpf_prog_info_node* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* @DSO_DATA_STATUS_ERROR, align 4
  %31 = load %struct.dso*, %struct.dso** %5, align 8
  %32 = getelementptr inbounds %struct.dso, %struct.dso* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 -1, i32* %4, align 4
  br label %67

34:                                               ; preds = %24
  %35 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %8, align 8
  %36 = getelementptr inbounds %struct.bpf_prog_info_node, %struct.bpf_prog_info_node* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.bpf_prog_info_node*, %struct.bpf_prog_info_node** %8, align 8
  %42 = getelementptr inbounds %struct.bpf_prog_info_node, %struct.bpf_prog_info_node* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %11, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %67

52:                                               ; preds = %34
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = call i64 @min(i64 %55, i64 %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memcpy(i8* %60, i32* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %52, %51, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.bpf_prog_info_node* @perf_env__find_bpf_prog_info(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
