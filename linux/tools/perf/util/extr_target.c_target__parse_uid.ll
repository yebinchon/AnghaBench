; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_target.c_target__parse_uid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_target.c_target__parse_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i8*, i32 }
%struct.passwd = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@TARGET_ERRNO__SUCCESS = common dso_local global i32 0, align 4
@TARGET_ERRNO__INVALID_UID = common dso_local global i32 0, align 4
@TARGET_ERRNO__USER_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target__parse_uid(%struct.target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target*, align 8
  %4 = alloca %struct.passwd, align 4
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.target* %0, %struct.target** %3, align 8
  %10 = load %struct.target*, %struct.target** %3, align 8
  %11 = getelementptr inbounds %struct.target, %struct.target* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @UINT_MAX, align 4
  %14 = load %struct.target*, %struct.target** %3, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %23 = call i32 @getpwnam_r(i8* %21, %struct.passwd* %4, i8* %22, i32 1024, %struct.passwd** %5)
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = icmp eq %struct.passwd* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strtol(i8* %27, i8** %8, i32 10)
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @TARGET_ERRNO__INVALID_UID, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %38 = call i32 @getpwuid_r(i32 %36, %struct.passwd* %4, i8* %37, i32 1024, %struct.passwd** %5)
  %39 = load %struct.passwd*, %struct.passwd** %5, align 8
  %40 = icmp eq %struct.passwd* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @TARGET_ERRNO__USER_NOT_FOUND, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %20
  %45 = load %struct.passwd*, %struct.passwd** %5, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.target*, %struct.target** %3, align 8
  %49 = getelementptr inbounds %struct.target, %struct.target* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @TARGET_ERRNO__SUCCESS, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %41, %33, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @getpwuid_r(i32, %struct.passwd*, i8*, i32, %struct.passwd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
