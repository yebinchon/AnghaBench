; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_list_commands_in_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_list_commands_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*, i8*, i8*)* @list_commands_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_commands_in_dir(%struct.cmdnames* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @opendir(i8* %12)
  store i32* %13, i32** %8, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %77

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @astrcatf(i8** %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %62, %46, %37, %21
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.dirent* @readdir(i32* %27)
  store %struct.dirent* %28, %struct.dirent** %9, align 8
  %29 = icmp ne %struct.dirent* %28, null
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load %struct.dirent*, %struct.dirent** %9, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strstarts(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %26

38:                                               ; preds = %30
  %39 = load %struct.dirent*, %struct.dirent** %9, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @astrcat(i8** %10, i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @is_executable(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %26

47:                                               ; preds = %38
  %48 = load %struct.dirent*, %struct.dirent** %9, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.dirent*, %struct.dirent** %9, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @has_extension(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %64 = load %struct.dirent*, %struct.dirent** %9, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @add_cmdname(%struct.cmdnames* %63, i8* %69, i32 %70)
  br label %26

72:                                               ; preds = %26
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @closedir(i32* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %72, %16
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @astrcatf(i8**, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i32 @astrcat(i8**, i8*) #1

declare dso_local i32 @is_executable(i8*) #1

declare dso_local i64 @has_extension(i8*, i8*) #1

declare dso_local i32 @add_cmdname(%struct.cmdnames*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
