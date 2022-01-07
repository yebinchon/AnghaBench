; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_compare_tev_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_compare_tev_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i32, %struct.probe_trace_arg* }
%struct.probe_trace_arg = type { %struct.probe_trace_arg_ref*, i32 }
%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_tev_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_tev_args(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.probe_trace_event*, align 8
  %9 = alloca %struct.probe_trace_event*, align 8
  %10 = alloca %struct.probe_trace_arg*, align 8
  %11 = alloca %struct.probe_trace_arg*, align 8
  %12 = alloca %struct.probe_trace_arg_ref*, align 8
  %13 = alloca %struct.probe_trace_arg_ref*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.probe_trace_event**
  %16 = load %struct.probe_trace_event*, %struct.probe_trace_event** %15, align 8
  store %struct.probe_trace_event* %16, %struct.probe_trace_event** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.probe_trace_event**
  %19 = load %struct.probe_trace_event*, %struct.probe_trace_event** %18, align 8
  store %struct.probe_trace_event* %19, %struct.probe_trace_event** %9, align 8
  %20 = load %struct.probe_trace_event*, %struct.probe_trace_event** %9, align 8
  %21 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %24 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %108, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %35 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %32
  %39 = load %struct.probe_trace_event*, %struct.probe_trace_event** %8, align 8
  %40 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %39, i32 0, i32 1
  %41 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %41, i64 %43
  store %struct.probe_trace_arg* %44, %struct.probe_trace_arg** %10, align 8
  %45 = load %struct.probe_trace_event*, %struct.probe_trace_event** %9, align 8
  %46 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %45, i32 0, i32 1
  %47 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %47, i64 %49
  store %struct.probe_trace_arg* %50, %struct.probe_trace_arg** %11, align 8
  %51 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %10, align 8
  %52 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %11, align 8
  %55 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strcmp(i32 %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %112

62:                                               ; preds = %38
  %63 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %10, align 8
  %64 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %63, i32 0, i32 0
  %65 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %64, align 8
  store %struct.probe_trace_arg_ref* %65, %struct.probe_trace_arg_ref** %12, align 8
  %66 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %11, align 8
  %67 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %66, i32 0, i32 0
  %68 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %67, align 8
  store %struct.probe_trace_arg_ref* %68, %struct.probe_trace_arg_ref** %13, align 8
  br label %69

69:                                               ; preds = %89, %62
  %70 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %71 = icmp ne %struct.probe_trace_arg_ref* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  %74 = icmp ne %struct.probe_trace_arg_ref* %73, null
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %77, label %96

77:                                               ; preds = %75
  %78 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  %79 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %82 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %112

89:                                               ; preds = %77
  %90 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %91 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %90, i32 0, i32 1
  %92 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %91, align 8
  store %struct.probe_trace_arg_ref* %92, %struct.probe_trace_arg_ref** %12, align 8
  %93 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  %94 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %93, i32 0, i32 1
  %95 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %94, align 8
  store %struct.probe_trace_arg_ref* %95, %struct.probe_trace_arg_ref** %13, align 8
  br label %69

96:                                               ; preds = %75
  %97 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %12, align 8
  %98 = icmp ne %struct.probe_trace_arg_ref* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  %101 = icmp ne %struct.probe_trace_arg_ref* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %96
  %103 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %13, align 8
  %104 = icmp ne %struct.probe_trace_arg_ref* %103, null
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 -1
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %32

111:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %102, %87, %60, %29
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
