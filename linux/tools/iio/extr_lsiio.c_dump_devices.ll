; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_dump_devices.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_dump_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@iio_dir = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No industrial I/O devices available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@type_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@verblevel = common dso_local global i64 0, align 8
@VERBLEVEL_SENSORS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@type_trigger = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"dump_devices(): Failed to close directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dump_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @iio_dir, align 4
  %8 = call i32* @opendir(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %112

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %2, align 8
  %20 = load %struct.dirent*, %struct.dirent** %2, align 8
  %21 = icmp ne %struct.dirent* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.dirent*, %struct.dirent** %2, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @type_device, align 4
  %27 = call i64 @check_prefix(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = load i32, i32* @iio_dir, align 4
  %31 = load %struct.dirent*, %struct.dirent** %2, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @asprintf(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %29
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @dump_one_device(i8* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  br label %104

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i64, i64* @verblevel, align 8
  %51 = load i64, i64* @VERBLEVEL_SENSORS, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %22
  br label %17

57:                                               ; preds = %17
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @rewinddir(i32* %58)
  br label %60

60:                                               ; preds = %93, %57
  %61 = load i32*, i32** %4, align 8
  %62 = call %struct.dirent* @readdir(i32* %61)
  store %struct.dirent* %62, %struct.dirent** %2, align 8
  %63 = load %struct.dirent*, %struct.dirent** %2, align 8
  %64 = icmp ne %struct.dirent* %63, null
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.dirent*, %struct.dirent** %2, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @type_trigger, align 4
  %70 = call i64 @check_prefix(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %65
  %73 = load i32, i32* @iio_dir, align 4
  %74 = load %struct.dirent*, %struct.dirent** %2, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %104

82:                                               ; preds = %72
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @dump_one_trigger(i8* %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  br label %104

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %90, %65
  br label %60

94:                                               ; preds = %60
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @closedir(i32* %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @errno, align 4
  %100 = sub nsw i32 0, %99
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %1, align 4
  br label %112

104:                                              ; preds = %87, %79, %44, %36
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @closedir(i32* %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i32, i32* %3, align 4
  store i32 %111, i32* %1, align 4
  br label %112

112:                                              ; preds = %110, %102, %11
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @check_prefix(i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @dump_one_device(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rewinddir(i32*) #1

declare dso_local i32 @dump_one_trigger(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
