; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_foreach_key_array_all.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_foreach_key_array_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_def = type { i32 }
%struct.bpf_map_op = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"ERROR: failed to insert value to %s[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, i8*, i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*)* @foreach_key_array_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_key_array_all(i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)* %0, i8* %1, i8* %2, i32 %3, %struct.bpf_map_def* %4, %struct.bpf_map_op* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_map_def*, align 8
  %13 = alloca %struct.bpf_map_op*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)* %0, i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.bpf_map_def* %4, %struct.bpf_map_def** %12, align 8
  store %struct.bpf_map_op* %5, %struct.bpf_map_op** %13, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %38, %6
  %17 = load i32, i32* %14, align 4
  %18 = load %struct.bpf_map_def*, %struct.bpf_map_def** %12, align 8
  %19 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)*, i32 (i8*, i32, %struct.bpf_map_def*, %struct.bpf_map_op*, i32*, i8*)** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.bpf_map_def*, %struct.bpf_map_def** %12, align 8
  %27 = load %struct.bpf_map_op*, %struct.bpf_map_op** %13, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 %23(i8* %24, i32 %25, %struct.bpf_map_def* %26, %struct.bpf_map_op* %27, i32* %14, i8* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %42

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
