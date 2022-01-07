; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_enable_all_controllers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_enable_all_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s/cgroup.controllers\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Opening cgroup.controllers: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Reading cgroup.controllers: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s/cgroup.subtree_control\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Opening cgroup.subtree_control: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"+%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Enabling controller %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_all_controllers(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = trunc i64 %15 to i32
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @snprintf(i8* %17, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %17, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

30:                                               ; preds = %1
  %31 = load i32, i32* %9, align 4
  %32 = sub i64 %19, 1
  %33 = trunc i64 %32 to i32
  %34 = call i64 @read(i32 %31, i8* %20, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @close(i32 %38)
  %40 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

41:                                               ; preds = %30
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %20, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

49:                                               ; preds = %41
  %50 = trunc i64 %15 to i32
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @snprintf(i8* %17, i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @O_RDWR, align 4
  %54 = call i32 @open(i8* %17, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

59:                                               ; preds = %49
  %60 = call i8* @strtok_r(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %75, %59
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @dprintf(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %70, i8* %17)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @close(i32 %72)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  store i8* %76, i8** %7, align 8
  br label %61

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @close(i32 %78)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %69, %57, %48, %37, %28
  %81 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @log_err(i8*, i8*, ...) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i64 @dprintf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
