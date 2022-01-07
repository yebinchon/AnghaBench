; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_prog_parse_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_prog_parse_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't parse %s as ID\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"get by id (%u): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@BPF_TAG_SIZE = common dso_local global i32 0, align 4
@BPF_TAG_FMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"can't parse tag\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@BPF_OBJ_PROG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"expected 'id', 'tag' or 'pinned', got: '%s'?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prog_parse_fd(i32* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %13 = load i8***, i8**** %5, align 8
  %14 = load i8**, i8*** %13, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @is_prefix(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = call i32 (...) @NEXT_ARGP()
  %20 = load i8***, i8**** %5, align 8
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strtoul(i8* %22, i8** %8, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i8***, i8**** %5, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %3, align 4
  br label %100

32:                                               ; preds = %18
  %33 = call i32 (...) @NEXT_ARGP()
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bpf_prog_get_fd_by_id(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %2
  %46 = load i8***, i8**** %5, align 8
  %47 = load i8**, i8*** %46, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @is_prefix(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load i32, i32* @BPF_TAG_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %9, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %10, align 8
  %56 = call i32 (...) @NEXT_ARGP()
  %57 = load i8***, i8**** %5, align 8
  %58 = load i8**, i8*** %57, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @BPF_TAG_FMT, align 4
  %61 = getelementptr inbounds i8, i8* %55, i64 1
  %62 = getelementptr inbounds i8, i8* %55, i64 2
  %63 = getelementptr inbounds i8, i8* %55, i64 3
  %64 = getelementptr inbounds i8, i8* %55, i64 4
  %65 = getelementptr inbounds i8, i8* %55, i64 5
  %66 = getelementptr inbounds i8, i8* %55, i64 6
  %67 = getelementptr inbounds i8, i8* %55, i64 7
  %68 = call i32 @sscanf(i8* %59, i32 %60, i8* %55, i8* %61, i8* %62, i8* %63, i8* %64, i8* %65, i8* %66, i8* %67)
  %69 = load i32, i32* @BPF_TAG_SIZE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

73:                                               ; preds = %51
  %74 = call i32 (...) @NEXT_ARGP()
  %75 = call i32 @prog_fd_by_tag(i8* %55)
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %71
  %77 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %100

78:                                               ; preds = %45
  %79 = load i8***, i8**** %5, align 8
  %80 = load i8**, i8*** %79, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @is_prefix(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = call i32 (...) @NEXT_ARGP()
  %86 = load i8***, i8**** %5, align 8
  %87 = load i8**, i8*** %86, align 8
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %12, align 8
  %89 = call i32 (...) @NEXT_ARGP()
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* @BPF_OBJ_PROG, align 4
  %92 = call i32 @open_obj_pinned_any(i8* %90, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %100

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i8***, i8**** %5, align 8
  %97 = load i8**, i8*** %96, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %84, %76, %43, %27
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @NEXT_ARGP(...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i32 @bpf_prog_get_fd_by_id(i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @prog_fd_by_tag(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @open_obj_pinned_any(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
