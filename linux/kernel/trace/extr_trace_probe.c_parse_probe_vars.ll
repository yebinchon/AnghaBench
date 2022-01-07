; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_parse_probe_vars.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_parse_probe_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32 }
%struct.fetch_insn = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@TPARG_FL_RETURN = common dso_local global i32 0, align 4
@FETCH_OP_RETVAL = common dso_local global i32 0, align 4
@RETVAL_ON_PROBE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@FETCH_OP_STACKP = common dso_local global i32 0, align 4
@TPARG_FL_KERNEL = common dso_local global i32 0, align 4
@PARAM_MAX_STACK = common dso_local global i64 0, align 8
@BAD_STACK_NUM = common dso_local global i32 0, align 4
@FETCH_OP_STACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@FETCH_OP_COMM = common dso_local global i32 0, align 4
@BAD_VAR = common dso_local global i32 0, align 4
@BAD_ARG_NUM = common dso_local global i32 0, align 4
@FETCH_OP_ARG = common dso_local global i32 0, align 4
@TPARG_FL_FENTRY = common dso_local global i32 0, align 4
@TPARG_FL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_insn*, i32, i32)* @parse_probe_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_probe_vars(i8* %0, %struct.fetch_type* %1, %struct.fetch_insn* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fetch_type*, align 8
  %9 = alloca %struct.fetch_insn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %8, align 8
  store %struct.fetch_insn* %2, %struct.fetch_insn** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TPARG_FL_RETURN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @FETCH_OP_RETVAL, align 4
  %25 = load %struct.fetch_insn*, %struct.fetch_insn** %9, align 8
  %26 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RETVAL_ON_PROBE, align 4
  %30 = call i32 @trace_probe_log_err(i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %27, %23
  br label %106

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @str_has_prefix(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %95

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @FETCH_OP_STACKP, align 4
  %48 = load %struct.fetch_insn*, %struct.fetch_insn** %9, align 8
  %49 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %94

50:                                               ; preds = %38
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isdigit(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 @kstrtoul(i8* %62, i32 10, i64* %12)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %108

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @TPARG_FL_KERNEL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @PARAM_MAX_STACK, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @BAD_STACK_NUM, align 4
  %79 = call i32 @trace_probe_log_err(i32 %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %90

82:                                               ; preds = %72, %67
  %83 = load i32, i32* @FETCH_OP_STACK, align 4
  %84 = load %struct.fetch_insn*, %struct.fetch_insn** %9, align 8
  %85 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %12, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.fetch_insn*, %struct.fetch_insn** %9, align 8
  %89 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %76
  br label %91

91:                                               ; preds = %90
  br label %93

92:                                               ; preds = %50
  br label %108

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %46
  br label %105

95:                                               ; preds = %34
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @FETCH_OP_COMM, align 4
  %101 = load %struct.fetch_insn*, %struct.fetch_insn** %9, align 8
  %102 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %104

103:                                              ; preds = %95
  br label %108

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %33
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  br label %114

108:                                              ; preds = %103, %92, %66
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @BAD_VAR, align 4
  %111 = call i32 @trace_probe_log_err(i32 %109, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %108, %106
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @str_has_prefix(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
