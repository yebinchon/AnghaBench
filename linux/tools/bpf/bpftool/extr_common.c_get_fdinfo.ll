; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_get_fdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_get_fdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"/proc/self/fdinfo/%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_fdinfo(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %19 = trunc i64 %16 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %72

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @getline(i8** %8, i64* %9, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strstr(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %27

37:                                               ; preds = %31
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 9)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %37
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %72

52:                                               ; preds = %44
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @memmove(i8* %57, i8* %58, i32 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %72

67:                                               ; preds = %27
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @fclose(i32* %70)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %67, %52, %49, %25
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
