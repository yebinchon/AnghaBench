; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_backend_file.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_backend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s/mpssd%03d.conf\00", align 1
@mic_config_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@virtblk_backend = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s %d can't allocate memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_info*)* @set_backend_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_backend_file(%struct.mic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mic_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mic_info* %0, %struct.mic_info** %3, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = load i8*, i8** @mic_config_dir, align 8
  %17 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %18 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @fgets(i8* %14, i32 %27, i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %54

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %47

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 10)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** @virtblk_backend, align 8
  %50 = load i8*, i8** @virtblk_backend, align 8
  %51 = call i64 @strlen(i8* %50)
  %52 = call i64 @strncmp(i8* %48, i8* %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %26, label %54

54:                                               ; preds = %47, %32
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = call i32* @malloc(i64 %69)
  %71 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %72 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  %74 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %75 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %66
  %80 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %81 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %84 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mpsslog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

87:                                               ; preds = %66
  %88 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %89 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 @strcpy(i32* %91, i8* %93)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %87, %79, %65, %59, %24
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @mpsslog(i8*, i32, i32) #2

declare dso_local i32 @strcpy(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
