; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_perf_gtk__get_line.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_perf_gtk__get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"<span fgcolor='gray'>\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"</span>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.disasm_line*)* @perf_gtk__get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_gtk__get_line(i8* %0, i64 %1, %struct.disasm_line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.disasm_line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.disasm_line* %2, %struct.disasm_line** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %12 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @g_markup_escape_text(i32 %14, i32 -1)
  store i8* %15, i8** %9, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.disasm_line*, %struct.disasm_line** %7, align 8
  %23 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %10, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %45, %47
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %44, i64 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %40
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %62, %64
  %66 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %61, i64 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %57, %40
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @g_free(i8* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @g_markup_escape_text(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
