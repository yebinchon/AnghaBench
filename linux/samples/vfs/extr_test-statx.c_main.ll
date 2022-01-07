; ModuleID = '/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statx = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@STATX_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@AT_STATX_SYNC_TYPE = common dso_local global i32 0, align 4
@AT_STATX_FORCE_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@AT_STATX_DONT_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@AT_NO_AUTOMOUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"statx(%s) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.statx, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @STATX_ALL, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %5, align 8
  br label %15

15:                                               ; preds = %107, %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %110

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @AT_STATX_SYNC_TYPE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @AT_STATX_FORCE_SYNC, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %107

32:                                               ; preds = %19
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @AT_STATX_SYNC_TYPE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @AT_STATX_DONT_SYNC, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %107

45:                                               ; preds = %32
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %107

55:                                               ; preds = %45
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @STATX_BASIC_STATS, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %107

65:                                               ; preds = %55
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @AT_NO_AUTOMOUNT, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %107

74:                                               ; preds = %65
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %107

80:                                               ; preds = %74
  %81 = call i32 @memset(%struct.statx* %6, i32 191, i32 4)
  %82 = load i32, i32* @AT_FDCWD, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @statx(i32 %82, i8* %84, i32 %85, i32 %86, %struct.statx* %6)
  store i32 %87, i32* %7, align 4
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load i8**, i8*** %5, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @perror(i8* %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %80
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = bitcast %struct.statx* %6 to i64*
  %104 = call i32 @dump_hex(i64* %103, i32 0, i32 4)
  br label %105

105:                                              ; preds = %102, %99
  %106 = call i32 @dump_statx(%struct.statx* %6)
  br label %107

107:                                              ; preds = %105, %79, %70, %60, %50, %37, %24
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %5, align 8
  br label %15

110:                                              ; preds = %15
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(%struct.statx*, i32, i32) #1

declare dso_local i32 @statx(i32, i8*, i32, i32, %struct.statx*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dump_hex(i64*, i32, i32) #1

declare dso_local i32 @dump_statx(%struct.statx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
