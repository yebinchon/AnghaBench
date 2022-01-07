; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_bearer_name_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_bearer_name_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer_names = type { i32, i32 }

@TIPC_MAX_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_MAX_MEDIA_NAME = common dso_local global i32 0, align 4
@TIPC_MAX_IF_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tipc_bearer_names*)* @bearer_name_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bearer_name_validate(i8* %0, %struct.tipc_bearer_names* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tipc_bearer_names*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tipc_bearer_names* %1, %struct.tipc_bearer_names** %5, align 8
  %13 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %23 = call i32 @strncpy(i8* %16, i8* %21, i32 %22)
  %24 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %16, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %79

32:                                               ; preds = %2
  store i8* %16, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %79

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  store i8 0, i8* %39, align 1
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %63, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @TIPC_MAX_MEDIA_NAME, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %56, %52, %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %79

64:                                               ; preds = %59
  %65 = load %struct.tipc_bearer_names*, %struct.tipc_bearer_names** %5, align 8
  %66 = icmp ne %struct.tipc_bearer_names* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.tipc_bearer_names*, %struct.tipc_bearer_names** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_bearer_names, %struct.tipc_bearer_names* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcpy(i32 %70, i8* %71)
  %73 = load %struct.tipc_bearer_names*, %struct.tipc_bearer_names** %5, align 8
  %74 = getelementptr inbounds %struct.tipc_bearer_names, %struct.tipc_bearer_names* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strcpy(i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %67, %64
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %63, %37, %31
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
