; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu__setup_cpunode_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu__setup_cpunode_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s/devices/system/node\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sysfs path crossed PATH_MAX(%d) size\0A\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"node%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DT_LNK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1
@cpunode_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu__setup_cpunode_map() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = call i64 (...) @init_cpunode_map()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %109

24:                                               ; preds = %0
  %25 = call i8* (...) @sysfs__mountpoint()
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %109

29:                                               ; preds = %24
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %109

39:                                               ; preds = %29
  %40 = call i32* @opendir(i8* %20)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %109

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %103, %78, %71, %61, %44
  %46 = load i32*, i32** %4, align 8
  %47 = call %struct.dirent* @readdir(i32* %46)
  store %struct.dirent* %47, %struct.dirent** %2, align 8
  %48 = icmp ne %struct.dirent* %47, null
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load %struct.dirent*, %struct.dirent** %2, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DT_DIR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.dirent*, %struct.dirent** %2, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @sscanf(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  br label %45

62:                                               ; preds = %55
  %63 = load i32, i32* @PATH_MAX, align 4
  %64 = load %struct.dirent*, %struct.dirent** %2, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @PATH_MAX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @PATH_MAX, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %45

74:                                               ; preds = %62
  %75 = call i32* @opendir(i8* %17)
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %45

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %97, %96, %79
  %81 = load i32*, i32** %5, align 8
  %82 = call %struct.dirent* @readdir(i32* %81)
  store %struct.dirent* %82, %struct.dirent** %3, align 8
  %83 = icmp ne %struct.dirent* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load %struct.dirent*, %struct.dirent** %3, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DT_LNK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.dirent*, %struct.dirent** %3, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @sscanf(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %84
  br label %80

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** @cpunode_map, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @closedir(i32* %104)
  br label %45

106:                                              ; preds = %45
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @closedir(i32* %107)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %43, %36, %28, %23
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @init_cpunode_map(...) #2

declare dso_local i8* @sysfs__mountpoint(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
