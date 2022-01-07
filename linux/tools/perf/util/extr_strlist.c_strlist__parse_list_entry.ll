; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__parse_list_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__parse_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strlist*, i8*, i8*)* @strlist__parse_list_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strlist__parse_list_entry(%struct.strlist* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.strlist* %0, %struct.strlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.strlist*, %struct.strlist** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 7
  %17 = call i32 @strlist__load(%struct.strlist* %14, i8* %16)
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %51

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @F_OK, align 4
  %32 = call i64 @access(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.strlist*, %struct.strlist** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strlist__load(%struct.strlist* %35, i8* %36)
  store i32 %37, i32* %8, align 4
  br label %51

38:                                               ; preds = %29
  %39 = load %struct.strlist*, %struct.strlist** %5, align 8
  %40 = getelementptr inbounds %struct.strlist, %struct.strlist* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %51

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.strlist*, %struct.strlist** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strlist__add(%struct.strlist* %48, i8* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43, %34, %28
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlist__load(%struct.strlist*, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
