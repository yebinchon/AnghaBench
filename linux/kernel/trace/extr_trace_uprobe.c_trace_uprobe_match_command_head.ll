; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_match_command_head.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_trace_uprobe_match_command_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32, i32, i32, i32 }

@MAX_ARGSTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%0*lx\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"0x%0*lx(0x%lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_uprobe*, i32, i8**)* @trace_uprobe_match_command_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_uprobe_match_command_head(%struct.trace_uprobe* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_uprobe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* @MAX_ARGSTR_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %22 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlen(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %26 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @strncmp(i32 %27, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %20
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 58
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

45:                                               ; preds = %34
  %46 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %47 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = trunc i64 %14 to i32
  %52 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %53 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %16, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 16, i32 %54)
  br label %65

56:                                               ; preds = %45
  %57 = trunc i64 %14 to i32
  %58 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %59 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %62 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %16, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 16, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %50
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i64 @strcmp(i8* %16, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  %79 = load i8**, i8*** %7, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %7, align 8
  %81 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  %82 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %81, i32 0, i32 0
  %83 = load i32, i32* %6, align 4
  %84 = load i8**, i8*** %7, align 8
  %85 = call i32 @trace_probe_match_command_args(i32* %82, i32 %83, i8** %84)
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %76, %75, %44, %19
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @trace_probe_match_command_args(i32*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
