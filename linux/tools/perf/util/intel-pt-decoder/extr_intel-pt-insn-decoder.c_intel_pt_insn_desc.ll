; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-insn-decoder.c_intel_pt_insn_desc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-insn-decoder.c_intel_pt_insn_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_insn = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s %s%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pt_insn_desc(%struct.intel_pt_insn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_insn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.intel_pt_insn* %0, %struct.intel_pt_insn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %5, align 8
  %9 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 131, label %11
    i32 128, label %11
    i32 129, label %28
    i32 130, label %28
  ]

11:                                               ; preds = %3, %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %5, align 8
  %15 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @intel_pt_insn_name(i32 %16)
  %18 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %5, align 8
  %19 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %5, align 8
  %25 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %23, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %3, %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %5, align 8
  %32 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @intel_pt_insn_name(i32 %33)
  %35 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %28, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i8* @intel_pt_insn_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
