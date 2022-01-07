; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_pool_threads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_pool_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.net = type { i32 }

@nfsd_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @write_pool_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pool_threads(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.net*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.net* @netns(%struct.file* %16)
  store %struct.net* %17, %struct.net** %14, align 8
  %18 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %19 = load %struct.net*, %struct.net** %14, align 8
  %20 = call i32 @nfsd_nrpools(%struct.net* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kcalloc(i32 %30, i32 4, i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %140

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @get_int(i8** %8, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %75

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %140

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %140

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %42

75:                                               ; preds = %56, %42
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.net*, %struct.net** %14, align 8
  %79 = call i32 @nfsd_set_nrthreads(i32 %76, i32* %77, %struct.net* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %140

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.net*, %struct.net** %14, align 8
  %88 = call i32 @nfsd_get_nrthreads(i32 %85, i32* %86, %struct.net* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %140

92:                                               ; preds = %84
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %8, align 8
  %94 = load i64, i64* @SIMPLE_TRANSACTION_LIMIT, align 8
  store i64 %94, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %130, %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* %7, align 8
  %101 = icmp ugt i64 %100, 0
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i1 [ false, %95 ], [ %101, %99 ]
  br i1 %103, label %104, label %133

104:                                              ; preds = %102
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %112, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 10, i32 32
  %118 = trunc i32 %117 to i8
  %119 = call i32 @snprintf(i8* %105, i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %111, i8 signext %118)
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @strlen(i8* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %7, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %8, align 8
  br label %130

130:                                              ; preds = %104
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %95

133:                                              ; preds = %102
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %133, %91, %82, %70, %60, %37
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @kfree(i32* %141)
  %143 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %140, %23
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.net* @netns(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfsd_nrpools(%struct.net*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @nfsd_set_nrthreads(i32, i32*, %struct.net*) #1

declare dso_local i32 @nfsd_get_nrthreads(i32, i32*, %struct.net*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8 signext) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
