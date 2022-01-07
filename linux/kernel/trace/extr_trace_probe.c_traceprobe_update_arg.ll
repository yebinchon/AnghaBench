; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_update_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_update_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_arg = type { %struct.fetch_insn* }
%struct.fetch_insn = type { i64, i64, i32 }

@FETCH_OP_END = common dso_local global i64 0, align 8
@FETCH_NOP_SYMBOL = common dso_local global i64 0, align 8
@FETCH_OP_IMM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traceprobe_update_arg(%struct.probe_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.probe_arg*, align 8
  %4 = alloca %struct.fetch_insn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.probe_arg* %0, %struct.probe_arg** %3, align 8
  %9 = load %struct.probe_arg*, %struct.probe_arg** %3, align 8
  %10 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %9, i32 0, i32 0
  %11 = load %struct.fetch_insn*, %struct.fetch_insn** %10, align 8
  store %struct.fetch_insn* %11, %struct.fetch_insn** %4, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %87, %1
  %13 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %14 = icmp ne %struct.fetch_insn* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %17 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FETCH_OP_END, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %90

23:                                               ; preds = %21
  %24 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %25 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FETCH_NOP_SYMBOL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %31 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %30, i64 1
  %32 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FETCH_OP_IMM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %29
  %40 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %41 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @strpbrk(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %7, align 1
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %51 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @traceprobe_split_symbol_offset(i32 %52, i64* %5)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %91

58:                                               ; preds = %49
  %59 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %60 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @kallsyms_lookup_name(i32 %61)
  %63 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %64 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %63, i64 1
  %65 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i8, i8* %7, align 1
  %70 = load i8*, i8** %6, align 8
  store i8 %69, i8* %70, align 1
  br label %71

71:                                               ; preds = %68, %58
  %72 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %73 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %72, i64 1
  %74 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %91

80:                                               ; preds = %71
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %83 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %82, i64 1
  %84 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %81
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %80, %23
  %88 = load %struct.fetch_insn*, %struct.fetch_insn** %4, align 8
  %89 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %88, i32 1
  store %struct.fetch_insn* %89, %struct.fetch_insn** %4, align 8
  br label %12

90:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %77, %56, %36
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @strpbrk(i32, i8*) #1

declare dso_local i32 @traceprobe_split_symbol_offset(i32, i64*) #1

declare dso_local i64 @kallsyms_lookup_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
