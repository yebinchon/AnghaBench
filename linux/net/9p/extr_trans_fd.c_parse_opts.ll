; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_fd.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fd_opts = type { i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@P9_PORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@Opt_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_fd_opts*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_fd_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_fd_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.p9_fd_opts* %1, %struct.p9_fd_opts** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @P9_PORT, align 4
  %20 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %21 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %23 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %25 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 4
  %26 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %27 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kstrdup(i8* %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %39 = call i32 @p9_debug(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

42:                                               ; preds = %31
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %89, %88, %67, %51, %42
  %45 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %44

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @tokens, align 4
  %55 = call i32 @match_token(i8* %53, i32 %54, i32* %18)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @Opt_err, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 130
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = getelementptr inbounds i32, i32* %18, i64 0
  %64 = call i32 @match_int(i32* %63, i32* %9)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %69 = call i32 @p9_debug(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %44

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %59, %52
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %88 [
    i32 131, label %73
    i32 129, label %77
    i32 128, label %81
    i32 130, label %85
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %76 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %80 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %89

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %84 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %89

85:                                               ; preds = %71
  %86 = load %struct.p9_fd_opts*, %struct.p9_fd_opts** %5, align 8
  %87 = getelementptr inbounds %struct.p9_fd_opts, %struct.p9_fd_opts* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  br label %89

88:                                               ; preds = %71
  br label %44

89:                                               ; preds = %85, %81, %77, %73
  br label %44

90:                                               ; preds = %44
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @kfree(i8* %91)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %37, %30
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @p9_debug(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
