; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_detach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@net_attach_type_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid net attach/detach type: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@attach_type_strings = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"interface %s detach failed: %s\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_detach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @REQ_ARGS(i32 3)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @parse_attach_type(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @net_attach_type_size, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %15
  %29 = call i32 (...) @NEXT_ARG()
  %30 = call i32 @net_parse_dev(i32* %4, i8*** %5)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  %37 = load i32*, i32** @attach_type_strings, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @do_attach_detach_xdp(i32 %45, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32*, i32** @attach_type_strings, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %49
  %66 = load i64, i64* @json_output, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @json_wtr, align 4
  %70 = call i32 @jsonw_null(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %52, %33, %22, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @REQ_ARGS(i32) #1

declare dso_local i32 @parse_attach_type(i8*) #1

declare dso_local i32 @p_err(i8*, i8*, ...) #1

declare dso_local i32 @NEXT_ARG(...) #1

declare dso_local i32 @net_parse_dev(i32*, i8***) #1

declare dso_local i64 @is_prefix(i8*, i32) #1

declare dso_local i32 @do_attach_detach_xdp(i32, i32, i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @jsonw_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
