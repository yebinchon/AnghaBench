; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_get_symbol_from_map.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_get_symbol_from_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym = type { i32, i8*, i8*, i32, i64 }

@LINE_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"File seek failed\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing line ending.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to find symbol: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, %struct.sym*)* @get_symbol_from_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_symbol_from_map(i32* %0, i32* %1, i8* %2, %struct.sym* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sym*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sym* %3, %struct.sym** %8, align 8
  %15 = load i32, i32* @LINE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.sym*, %struct.sym** %8, align 8
  %20 = getelementptr inbounds %struct.sym, %struct.sym* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.sym*, %struct.sym** %8, align 8
  %22 = getelementptr inbounds %struct.sym, %struct.sym* %21, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load %struct.sym*, %struct.sym** %8, align 8
  %24 = getelementptr inbounds %struct.sym, %struct.sym* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @fseek(i32* %25, i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @exit(i32 %31) #4
  unreachable

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* @LINE_SIZE, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @fgets(i8* %18, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %93

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strstr(i8* %18, i8* %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  br label %34

52:                                               ; preds = %50, %34
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  store i32 1, i32* %14, align 4
  br label %93

58:                                               ; preds = %52
  %59 = call i8* @strchr(i8* %18, i8 signext 32)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  br label %93

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  store i8 0, i8* %64, align 1
  %65 = call i32 @strtoul(i8* %18, i32* null, i32 16)
  %66 = load %struct.sym*, %struct.sym** %8, align 8
  %67 = getelementptr inbounds %struct.sym, %struct.sym* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sym*, %struct.sym** %8, align 8
  %69 = getelementptr inbounds %struct.sym, %struct.sym* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  br label %93

73:                                               ; preds = %63
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.sym*, %struct.sym** %8, align 8
  %76 = getelementptr inbounds %struct.sym, %struct.sym* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @get_offset_from_address(i32* %74, i32 %77)
  %79 = load %struct.sym*, %struct.sym** %8, align 8
  %80 = getelementptr inbounds %struct.sym, %struct.sym* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.sym*, %struct.sym** %8, align 8
  %83 = getelementptr inbounds %struct.sym, %struct.sym* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.sym*, %struct.sym** %8, align 8
  %87 = getelementptr inbounds %struct.sym, %struct.sym* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %85, i64 %89
  %91 = load %struct.sym*, %struct.sym** %8, align 8
  %92 = getelementptr inbounds %struct.sym, %struct.sym* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %73, %72, %62, %55, %43
  %94 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %14, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fseek(i32*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @err(i8*, ...) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @get_offset_from_address(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
