; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_attach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@net_attach_type_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid net attach/detach type: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"expected 'overwrite', got: '%s'?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@attach_type_strings = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"interface %s attach failed: %s\00", align 1
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 @REQ_ARGS(i32 5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @parse_attach_type(i8* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @net_attach_type_size, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %16
  %30 = call i32 (...) @NEXT_ARG()
  %31 = call i32 @prog_parse_fd(i32* %4, i8*** %5)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %99

37:                                               ; preds = %29
  %38 = call i32 @net_parse_dev(i32* %4, i8*** %5)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %99

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @is_prefix(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %99

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i8**, i8*** @attach_type_strings, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @is_prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @do_attach_detach_xdp(i32 %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i8**, i8*** @attach_type_strings, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %86, i32 %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %99

92:                                               ; preds = %78
  %93 = load i64, i64* @json_output, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @json_wtr, align 4
  %97 = call i32 @jsonw_null(i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %81, %55, %41, %34, %23, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @REQ_ARGS(i32) #1

declare dso_local i32 @parse_attach_type(i8*) #1

declare dso_local i32 @p_err(i8*, i8*, ...) #1

declare dso_local i32 @NEXT_ARG(...) #1

declare dso_local i32 @prog_parse_fd(i32*, i8***) #1

declare dso_local i32 @net_parse_dev(i32*, i8***) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @do_attach_detach_xdp(i32, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @jsonw_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
