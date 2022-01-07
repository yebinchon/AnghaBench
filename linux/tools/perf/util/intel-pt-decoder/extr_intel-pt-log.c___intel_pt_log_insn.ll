; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-log.c___intel_pt_log_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-log.c___intel_pt_log_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_insn = type { i64, i32 }

@INTEL_PT_INSN_DESC_MAX = common dso_local global i32 0, align 4
@INTEL_PT_INSN_BUF_SZ = common dso_local global i64 0, align 8
@f = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad instruction!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__intel_pt_log_insn(%struct.intel_pt_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_pt_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_pt_insn* %0, %struct.intel_pt_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @INTEL_PT_INSN_DESC_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = call i64 (...) @intel_pt_log_open()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @INTEL_PT_INSN_BUF_SZ, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @INTEL_PT_INSN_BUF_SZ, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @intel_pt_print_data(i32 %28, i64 %29, i32 %30, i32 8)
  %32 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %3, align 8
  %33 = load i32, i32* @INTEL_PT_INSN_DESC_MAX, align 4
  %34 = call i64 @intel_pt_insn_desc(%struct.intel_pt_insn* %32, i8* %12, i32 %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @f, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @f, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
    i32 1, label %46
  ]

46:                                               ; preds = %43, %43
  ret void

47:                                               ; preds = %43
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @intel_pt_log_open(...) #2

declare dso_local i32 @intel_pt_print_data(i32, i64, i32, i32) #2

declare dso_local i64 @intel_pt_insn_desc(%struct.intel_pt_insn*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
