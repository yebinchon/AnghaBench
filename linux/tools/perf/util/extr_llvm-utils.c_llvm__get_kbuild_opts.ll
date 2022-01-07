; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__get_kbuild_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__get_kbuild_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@llvm__get_kbuild_opts.saved_kbuild_dir = internal global i8* null, align 8
@llvm__get_kbuild_opts.saved_kbuild_include_opts = internal global i8* null, align 8
@llvm_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"[llvm.kbuild-dir] is set to \22\22 deliberately.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Skip kbuild options detection.\0A\00", align 1
@.str.2 = private unnamed_addr constant [214 x i8] c"WARNING:\09unable to get correct kernel building directory.\0AHint:\09Set correct kbuild directory using 'kbuild-dir' option in [llvm]\0A     \09section of ~/.perfconfig or set it to \22\22 to suppress kbuild\0A     \09detection.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Kernel build dir is set to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"KBUILD_DIR\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"KBUILD_OPTS\00", align 1
@kinc_fetch_script = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [255 x i8] c"WARNING:\09unable to get kernel include directories from '%s'\0AHint:\09Try set clang include options using 'clang-bpf-cmd-template'\0A     \09option in [llvm] section of ~/.perfconfig and set 'kbuild-dir'\0A     \09option in [llvm] to \22\22 to suppress this detection.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"include option is set to %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llvm__get_kbuild_opts(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  br label %112

12:                                               ; preds = %8
  %13 = load i8**, i8*** %3, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %4, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %22 = call i32 @IS_ERR(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  %26 = call i32 @IS_ERR(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %30 = call i8* @strdup(i8* %29)
  %31 = load i8**, i8*** %3, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %3, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %112

43:                                               ; preds = %38, %28
  %44 = load i8**, i8*** %3, align 8
  %45 = call i32 @zfree(i8** %44)
  %46 = load i8**, i8*** %4, align 8
  %47 = call i32 @zfree(i8** %46)
  br label %112

48:                                               ; preds = %24, %20, %17, %12
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 1), align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 1), align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %105

59:                                               ; preds = %51, %48
  %60 = load i8**, i8*** %3, align 8
  %61 = call i32 @detect_kbuild_dir(i8** %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.2, i64 0, i64 0))
  br label %105

66:                                               ; preds = %59
  %67 = load i8**, i8*** %3, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i8**, i8*** %3, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @force_set_env(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 0), align 8
  %74 = call i32 @force_set_env(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @kinc_fetch_script, align 4
  %76 = load i8**, i8*** %4, align 8
  %77 = call i32 @read_from_pipe(i32 %75, i8** %76, i32* null)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  %84 = load i8**, i8*** %3, align 8
  %85 = call i32 @zfree(i8** %84)
  br label %105

86:                                               ; preds = %66
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  %90 = load i8**, i8*** %3, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strdup(i8* %91)
  store i8* %92, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %93 = load i8**, i8*** %4, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strdup(i8* %94)
  store i8* %95, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  %96 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i8*, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98, %86
  %102 = call i32 @zfree(i8** @llvm__get_kbuild_opts.saved_kbuild_dir)
  %103 = call i32 @zfree(i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts)
  br label %104

104:                                              ; preds = %101, %98
  br label %112

105:                                              ; preds = %80, %64, %56
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i8* @ERR_PTR(i32 %107)
  store i8* %108, i8** @llvm__get_kbuild_opts.saved_kbuild_dir, align 8
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  %111 = call i8* @ERR_PTR(i32 %110)
  store i8* %111, i8** @llvm__get_kbuild_opts.saved_kbuild_include_opts, align 8
  br label %112

112:                                              ; preds = %105, %104, %43, %42, %11
  ret void
}

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @detect_kbuild_dir(i8**) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @force_set_env(i8*, i8*) #1

declare dso_local i32 @read_from_pipe(i32, i8**, i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
