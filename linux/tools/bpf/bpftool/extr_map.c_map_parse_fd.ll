; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_map_parse_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_map_parse_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't parse %s as ID\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"get map by id (%u): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@BPF_OBJ_MAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"expected 'id' or 'pinned', got: '%s'?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_parse_fd(i32* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %10 = load i8***, i8**** %5, align 8
  %11 = load i8**, i8*** %10, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @is_prefix(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = call i32 (...) @NEXT_ARGP()
  %17 = load i8***, i8**** %5, align 8
  %18 = load i8**, i8*** %17, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strtoul(i8* %19, i8** %8, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i8***, i8**** %5, align 8
  %26 = load i8**, i8*** %25, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %3, align 4
  br label %63

29:                                               ; preds = %15
  %30 = call i32 (...) @NEXT_ARGP()
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bpf_map_get_fd_by_id(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load i8***, i8**** %5, align 8
  %44 = load i8**, i8*** %43, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @is_prefix(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = call i32 (...) @NEXT_ARGP()
  %50 = load i8***, i8**** %5, align 8
  %51 = load i8**, i8*** %50, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  %53 = call i32 (...) @NEXT_ARGP()
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @BPF_OBJ_MAP, align 4
  %56 = call i32 @open_obj_pinned_any(i8* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i8***, i8**** %5, align 8
  %60 = load i8**, i8*** %59, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %48, %40, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @NEXT_ARGP(...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i32 @bpf_map_get_fd_by_id(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open_obj_pinned_any(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
