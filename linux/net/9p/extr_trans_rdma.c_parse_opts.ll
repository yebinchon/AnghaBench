; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_rdma_opts = type { i32, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@P9_PORT = common dso_local global i32 0, align 4
@P9_RDMA_SQ_DEPTH = common dso_local global i32 0, align 4
@P9_RDMA_RQ_DEPTH = common dso_local global i32 0, align 4
@P9_RDMA_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate copy of option string\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@Opt_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.p9_rdma_opts*)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opts(i8* %0, %struct.p9_rdma_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p9_rdma_opts*, align 8
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
  store %struct.p9_rdma_opts* %1, %struct.p9_rdma_opts** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @P9_PORT, align 4
  %20 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %21 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @P9_RDMA_SQ_DEPTH, align 4
  %23 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %24 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @P9_RDMA_RQ_DEPTH, align 4
  %26 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %27 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @P9_RDMA_TIMEOUT, align 4
  %29 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %30 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %32 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %111

36:                                               ; preds = %2
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kstrdup(i8* %37, i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %44 = call i32 @p9_debug(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %111

47:                                               ; preds = %36
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %98, %97, %72, %56, %47
  %50 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %99

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %49

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @tokens, align 4
  %60 = call i32 @match_token(i8* %58, i32 %59, i32* %18)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @Opt_err, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 131
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = getelementptr inbounds i32, i32* %18, i64 0
  %69 = call i32 @match_int(i32* %68, i32* %9)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %74 = call i32 @p9_debug(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %49

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %64, %57
  %77 = load i32, i32* %13, align 4
  switch i32 %77, label %97 [
    i32 132, label %78
    i32 129, label %82
    i32 130, label %86
    i32 128, label %90
    i32 131, label %94
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %81 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %98

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %85 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %98

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %89 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %98

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %93 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %98

94:                                               ; preds = %76
  %95 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %96 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  br label %98

97:                                               ; preds = %76
  br label %49

98:                                               ; preds = %94, %90, %86, %82, %78
  br label %49

99:                                               ; preds = %49
  %100 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %101 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %104 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @max(i32 %102, i32 %105)
  %107 = load %struct.p9_rdma_opts*, %struct.p9_rdma_opts** %5, align 8
  %108 = getelementptr inbounds %struct.p9_rdma_opts, %struct.p9_rdma_opts* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @kfree(i8* %109)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %99, %42, %35
  %112 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @p9_debug(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

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
