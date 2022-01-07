; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcfile_relative_open.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcfile_relative_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't open \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@depfile = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @srcfile_relative_open(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @streq(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** @stdin, align 8
  store i32* %11, i32** %5, align 8
  %12 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @fopen_any_on_path(i8* %14, i32** %5)
  store i8* %15, i8** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i64, i64* @depfile, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @depfile, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8**, i8*** %4, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  br label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @free(i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %5, align 8
  ret i32* %41
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @fopen_any_on_path(i8*, i32**) #1

declare dso_local i32 @die(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
