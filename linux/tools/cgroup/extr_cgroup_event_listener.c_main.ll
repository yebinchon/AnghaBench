; ModuleID = '/home/carl/AnghaBench/linux/tools/cgroup/extr_cgroup_event_listener.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/cgroup/extr_cgroup_event_listener.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@USAGE_STR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s/cgroup.event_control\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Path to cgroup.event_control is too long\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"eventfd() failed\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d %d %s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Arguments string is too long\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Cannot write to cgroup.event_control\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Cannot read from eventfd\00", align 1
@W_OK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"The cgroup seems to have removed.\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"cgroup.event_control is not accessible any more\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%s %s: crossed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @LINE_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @USAGE_STR, align 4
  %25 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i8* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @dirname(i8* %43)
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, i32* @O_WRONLY, align 4
  %53 = call i32 @open(i8* %17, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %58

58:                                               ; preds = %56, %51
  %59 = call i32 @eventfd(i32 0, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @LINE_MAX, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %67, i8* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @LINE_MAX, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %64
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @strlen(i8* %20)
  %80 = add nsw i64 %79, 1
  %81 = call i32 @write(i32 %78, i8* %20, i64 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %121, %97, %86
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @read(i32 %89, i32* %13, i32 4)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @EINTR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %87

98:                                               ; preds = %93
  %99 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %88
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %102, 4
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* @W_OK, align 4
  %107 = call i32 @access(i8* %17, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load i64, i64* @errno, align 8
  %112 = load i64, i64* @ENOENT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %129

116:                                              ; preds = %110, %100
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %124, i8* %127)
  br label %87

129:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i32 @eventfd(i32, i32) #2

declare dso_local i32 @write(i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
