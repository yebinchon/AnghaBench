; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fstree.c_read_fstree.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fstree.c_read_fstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32, i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Couldn't opendir() \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"stat(%s): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"WARNING: Cannot open %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (i8*)* @read_fstree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @read_fstree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.node*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @opendir(i8* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = call %struct.node* @build_node(i32* null, i32* null, i32* null)
  store %struct.node* %21, %struct.node** %6, align 8
  br label %22

22:                                               ; preds = %103, %38, %20
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %4, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %106

26:                                               ; preds = %22
  %27 = load %struct.dirent*, %struct.dirent** %4, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @streq(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.dirent*, %struct.dirent** %4, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @streq(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %22

39:                                               ; preds = %32
  %40 = load i8*, i8** %2, align 8
  %41 = load %struct.dirent*, %struct.dirent** %4, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @join_path(i8* %40, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @lstat(i8* %45, %struct.stat* %5)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %51)
  br label %53

53:                                               ; preds = %48, %39
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISREG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = call i32* @fopen(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %67)
  br label %84

69:                                               ; preds = %58
  %70 = load %struct.dirent*, %struct.dirent** %4, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xstrdup(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @data_copy_file(i32* %74, i32 %76)
  %78 = call %struct.property* @build_property(i32 %73, i32 %77, i32* null)
  store %struct.property* %78, %struct.property** %8, align 8
  %79 = load %struct.node*, %struct.node** %6, align 8
  %80 = load %struct.property*, %struct.property** %8, align 8
  %81 = call i32 @add_property(%struct.node* %79, %struct.property* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @fclose(i32* %82)
  br label %84

84:                                               ; preds = %69, %63
  br label %103

85:                                               ; preds = %53
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = call %struct.node* @read_fstree(i8* %91)
  store %struct.node* %92, %struct.node** %10, align 8
  %93 = load %struct.node*, %struct.node** %10, align 8
  %94 = load %struct.dirent*, %struct.dirent** %4, align 8
  %95 = getelementptr inbounds %struct.dirent, %struct.dirent* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xstrdup(i32 %96)
  %98 = call %struct.node* @name_node(%struct.node* %93, i32 %97)
  store %struct.node* %98, %struct.node** %10, align 8
  %99 = load %struct.node*, %struct.node** %6, align 8
  %100 = load %struct.node*, %struct.node** %10, align 8
  %101 = call i32 @add_child(%struct.node* %99, %struct.node* %100)
  br label %102

102:                                              ; preds = %90, %85
  br label %103

103:                                              ; preds = %102, %84
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @free(i8* %104)
  br label %22

106:                                              ; preds = %22
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @closedir(i32* %107)
  %109 = load %struct.node*, %struct.node** %6, align 8
  ret %struct.node* %109
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @die(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.node* @build_node(i32*, i32*, i32*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i8* @join_path(i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.property* @build_property(i32, i32, i32*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @data_copy_file(i32*, i32) #1

declare dso_local i32 @add_property(%struct.node*, %struct.property*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.node* @name_node(%struct.node*, i32) #1

declare dso_local i32 @add_child(%struct.node*, %struct.node*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
