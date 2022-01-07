; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read_batch_log.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read_batch_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circ_buf = type { i8*, i64 }

@acpi_aml_log_state = common dso_local global i32 0, align 4
@ACPI_AML_LOG_STOP = common dso_local global i32 0, align 4
@ACPI_AML_PROMPT_ROLL = common dso_local global i32 0, align 4
@acpi_aml_batch_roll = common dso_local global i8 0, align 1
@ACPI_AML_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ACPI_DEBUGGER_COMMAND_PROMPT = common dso_local global i8 0, align 1
@ACPI_DEBUGGER_EXECUTE_PROMPT = common dso_local global i8 0, align 1
@acpi_aml_batch_prompt = common dso_local global i8 0, align 1
@acpi_aml_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.circ_buf*)* @acpi_aml_read_batch_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_read_batch_log(i32 %0, %struct.circ_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.circ_buf* %1, %struct.circ_buf** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %9 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %12 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %5, align 8
  %15 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %16 = call i32 @circ_space_to_end(%struct.circ_buf* %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %146, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @acpi_aml_log_state, align 4
  %23 = load i32, i32* @ACPI_AML_LOG_STOP, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %147

27:                                               ; preds = %25
  %28 = load i32, i32* @acpi_aml_log_state, align 4
  %29 = load i32, i32* @ACPI_AML_PROMPT_ROLL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i8, i8* @acpi_aml_batch_roll, align 1
  %33 = load i8*, i8** %5, align 8
  store i8 %32, i8* %33, align 1
  store i32 1, i32* %6, align 4
  %34 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %35 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = and i64 %37, %40
  %42 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  store i32 130, i32* @acpi_aml_log_state, align 4
  br label %60

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @read(i32 %47, i8* %48, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %7, align 4
  br label %147

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* @acpi_aml_log_state, align 4
  switch i32 %61, label %144 [
    i32 130, label %62
    i32 129, label %81
    i32 128, label %118
  ]

62:                                               ; preds = %60
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 129, i32* @acpi_aml_log_state, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  %73 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = and i64 %72, %75
  %77 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %146

81:                                               ; preds = %60
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @ACPI_DEBUGGER_COMMAND_PROMPT, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @ACPI_DEBUGGER_EXECUTE_PROMPT, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88, %81
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* @acpi_aml_batch_prompt, align 1
  store i32 128, i32* @acpi_aml_log_state, align 4
  br label %117

98:                                               ; preds = %88
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 10
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 130, i32* @acpi_aml_log_state, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %106 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  %109 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = and i64 %108, %111
  %113 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %114 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %104, %95
  br label %146

118:                                              ; preds = %60
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @ACPI_AML_LOG_STOP, align 4
  store i32 %124, i32* @acpi_aml_log_state, align 4
  store i32 1, i32* @acpi_aml_exit, align 4
  br label %143

125:                                              ; preds = %118
  %126 = load i32, i32* @ACPI_AML_PROMPT_ROLL, align 4
  store i32 %126, i32* @acpi_aml_log_state, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* @acpi_aml_batch_roll, align 1
  %129 = load i8, i8* @acpi_aml_batch_prompt, align 1
  %130 = load i8*, i8** %5, align 8
  store i8 %129, i8* %130, align 1
  %131 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %132 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  %135 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = and i64 %134, %137
  %139 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %140 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %125, %123
  br label %146

144:                                              ; preds = %60
  %145 = call i32 @assert(i32 0)
  br label %146

146:                                              ; preds = %144, %143, %117, %68
  br label %17

147:                                              ; preds = %57, %25
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @circ_space_to_end(%struct.circ_buf*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
