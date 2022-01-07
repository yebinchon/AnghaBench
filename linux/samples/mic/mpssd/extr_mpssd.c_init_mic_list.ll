; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_init_mic_list.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_init_mic_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { i32, i64, %struct.mic_info* }
%struct.dirent = type { i32* }

@mic_list = common dso_local global %struct.mic_info zeroinitializer, align 8
@MICSYSFSDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mic\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"MIC name %s id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_mic_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mic_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mic_info*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mic_info* @mic_list, %struct.mic_info** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MICSYSFSDIR, align 4
  %7 = call i32* @opendir(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %77

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %72, %11
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.dirent* @readdir(i32* %13)
  store %struct.dirent* %14, %struct.dirent** %3, align 8
  %15 = icmp ne %struct.dirent* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = load %struct.dirent*, %struct.dirent** %3, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @strncmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %16
  %23 = call %struct.mic_info* @calloc(i32 1, i32 24)
  %24 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %25 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %24, i32 0, i32 2
  store %struct.mic_info* %23, %struct.mic_info** %25, align 8
  %26 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %27 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %26, i32 0, i32 2
  %28 = load %struct.mic_info*, %struct.mic_info** %27, align 8
  %29 = icmp ne %struct.mic_info* %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %22
  %31 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %32 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %31, i32 0, i32 2
  %33 = load %struct.mic_info*, %struct.mic_info** %32, align 8
  store %struct.mic_info* %33, %struct.mic_info** %2, align 8
  %34 = load %struct.dirent*, %struct.dirent** %3, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = call i32 @atoi(i32* %37)
  %39 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %40 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dirent*, %struct.dirent** %3, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @strlen(i32* %43)
  %45 = add nsw i64 %44, 16
  %46 = call i64 @malloc(i64 %45)
  %47 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %48 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %50 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %30
  %54 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %55 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dirent*, %struct.dirent** %3, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @strcpy(i64 %56, i32* %59)
  br label %61

61:                                               ; preds = %53, %30
  %62 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %63 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %66 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mpsslog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %64, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %61, %22
  br label %72

72:                                               ; preds = %71, %16
  br label %12

73:                                               ; preds = %12
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @closedir(i32* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %73, %10
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local %struct.mic_info* @calloc(i32, i32) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @strcpy(i64, i32*) #1

declare dso_local i32 @mpsslog(i8*, i64, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
