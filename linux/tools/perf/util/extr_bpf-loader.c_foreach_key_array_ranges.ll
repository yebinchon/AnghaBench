; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_foreach_key_array_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_foreach_key_array_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_def = type { i32 }
%struct.bpf_map_op = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"ERROR: failed to insert value to %s[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, i8*, i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*)* @foreach_key_array_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_key_array_ranges(i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)* %0, i8* %1, i8* %2, i32 %3, %struct.bpf_map_def* %4, %struct.bpf_map_op* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_map_def*, align 8
  %13 = alloca %struct.bpf_map_op*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)* %0, i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.bpf_map_def* %4, %struct.bpf_map_def** %12, align 8
  store %struct.bpf_map_op* %5, %struct.bpf_map_op** %13, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %77, %6
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.bpf_map_op*, %struct.bpf_map_op** %13, align 8
  %23 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %20
  %29 = load %struct.bpf_map_op*, %struct.bpf_map_op** %13, align 8
  %30 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load %struct.bpf_map_op*, %struct.bpf_map_op** %13, align 8
  %40 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %73, %28
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %18, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.bpf_map_def*, %struct.bpf_map_def** %12, align 8
  %62 = load %struct.bpf_map_op*, %struct.bpf_map_op** %13, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 %58(i8* %59, i32 %60, %struct.bpf_map_def* %61, %struct.bpf_map_op* %62, i32* %19, i8* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %7, align 4
  br label %81

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %49

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %20

80:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
