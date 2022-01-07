; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_if_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_if_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@KVP_NET_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s%s/device/device_id\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kvp_get_if_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kvp_get_if_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i8*, i8** @KVP_NET_DIR, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %72

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %65, %38, %23
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.dirent* @readdir(i32* %25)
  store %struct.dirent* %26, %struct.dirent** %5, align 8
  %27 = icmp ne %struct.dirent* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = trunc i64 %15 to i32
  %30 = load i8*, i8** @KVP_NET_DIR, align 8
  %31 = load %struct.dirent*, %struct.dirent** %5, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintf(i8* %17, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33)
  %35 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %24

39:                                               ; preds = %28
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @fgets(i8* %40, i32 256, i32* %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 10)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.dirent*, %struct.dirent** %5, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @strdup(i32 %60)
  store i8* %61, i8** %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @fclose(i32* %62)
  br label %68

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fclose(i32* %66)
  br label %24

68:                                               ; preds = %57, %24
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @closedir(i32* %69)
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %68, %22
  %73 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @strdup(i32) #2

declare dso_local i32 @fclose(i32*) #2

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
