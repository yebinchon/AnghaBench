; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_perf_regs.c_arch_sdt_arg_parse_op.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_perf_regs.c_arch_sdt_arg_parse_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Skipping unsupported SDT argument: %s\0A\00", align 1
@SDT_ARG_SKIP = common dso_local global i32 0, align 4
@sdt_op_regex1 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%%gpr%.*s\00", align 1
@sdt_op_regex2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%c%.*s(%%gpr%.*s)\00", align 1
@SDT_ARG_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_sdt_arg_parse_op(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.TYPE_3__], align 16
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 105
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @pr_debug4(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @SDT_ARG_SKIP, align 4
  store i32 %18, i32* %3, align 4
  br label %147

19:                                               ; preds = %2
  %20 = call i32 (...) @sdt_init_op_regex()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %147

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %28 = call i32 @regexec(i32* @sdt_op_regex1, i8* %26, i32 3, %struct.TYPE_3__* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %25
  store i32 5, i32* %7, align 4
  %31 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @zalloc(i32 %40)
  %42 = load i8**, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %147

49:                                               ; preds = %30
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 16
  %56 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = call i32 (i8*, i32, i8*, i8, ...) @scnprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 signext %60, i8* %66)
  br label %145

68:                                               ; preds = %25
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %71 = call i32 @regexec(i32* @sdt_op_regex2, i8* %69, i32 5, %struct.TYPE_3__* %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %140, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, -1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 43, i32 45
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %9, align 1
  store i32 8, i32* %7, align 4
  %81 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i8* @zalloc(i32 %99)
  %101 = load i8**, i8*** %5, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %73
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %147

108:                                              ; preds = %73
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i8, i8* %9, align 1
  %113 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 16
  %129 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 4
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %8, i64 0, i64 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = call i32 (i8*, i32, i8*, i8, ...) @scnprintf(i8* %110, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8 signext %112, i32 %119, i8* %125, i32 %132, i8* %138)
  br label %144

140:                                              ; preds = %68
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @pr_debug4(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* @SDT_ARG_SKIP, align 4
  store i32 %143, i32* %3, align 4
  br label %147

144:                                              ; preds = %108
  br label %145

145:                                              ; preds = %144, %49
  %146 = load i32, i32* @SDT_ARG_VALID, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %140, %105, %46, %23, %15
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @pr_debug4(i8*, i8*) #1

declare dso_local i32 @sdt_init_op_regex(...) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
