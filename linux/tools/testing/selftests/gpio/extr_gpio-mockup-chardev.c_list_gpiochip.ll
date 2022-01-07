; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_list_gpiochip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_list_gpiochip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiochip_info = type { i32 }
%struct.dirent = type { i32 }

@GC_NUM = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gpiochip_info allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"gpiochip\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@GPIO_GET_CHIPINFO_IOCTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to issue CHIPINFO IOCTL\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"list gpiochip failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpiochip_info* (i8*, i32*)* @list_gpiochip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpiochip_info* @list_gpiochip(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gpiochip_info*, align 8
  %6 = alloca %struct.gpiochip_info*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* @GC_NUM, align 8
  %13 = add nsw i64 %12, 1
  %14 = call %struct.gpiochip_info* @calloc(i32 16, i64 %13)
  store %struct.gpiochip_info* %14, %struct.gpiochip_info** %5, align 8
  %15 = load %struct.gpiochip_info*, %struct.gpiochip_info** %5, align 8
  %16 = icmp ne %struct.gpiochip_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 (i32, i8*, ...) @err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.gpiochip_info*, %struct.gpiochip_info** %5, align 8
  store %struct.gpiochip_info* %21, %struct.gpiochip_info** %6, align 8
  %22 = call i32* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %134

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %99, %31
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.dirent* @readdir(i32* %33)
  store %struct.dirent* %34, %struct.dirent** %7, align 8
  %35 = load %struct.dirent*, %struct.dirent** %7, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %100

37:                                               ; preds = %32
  %38 = load %struct.dirent*, %struct.dirent** %7, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @check_prefix(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %37
  %44 = load %struct.dirent*, %struct.dirent** %7, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %134

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @open(i8* %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @errno, align 4
  %60 = sub nsw i32 0, %59
  %61 = load i32*, i32** %4, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %131

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @GPIO_GET_CHIPINFO_IOCTL, align 4
  %68 = load %struct.gpiochip_info*, %struct.gpiochip_info** %6, align 8
  %69 = call i32 @ioctl(i32 %66, i32 %67, %struct.gpiochip_info* %68)
  %70 = load i32*, i32** %4, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %131

76:                                               ; preds = %65
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load %struct.gpiochip_info*, %struct.gpiochip_info** %6, align 8
  %80 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strcmp(i32 %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %76
  %86 = load %struct.gpiochip_info*, %struct.gpiochip_info** %6, align 8
  %87 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = call i64 @check_prefix(i32 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85, %76
  %93 = load i32*, i32** %4, align 8
  store i32 0, i32* %93, align 4
  %94 = load %struct.gpiochip_info*, %struct.gpiochip_info** %6, align 8
  %95 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %94, i32 1
  store %struct.gpiochip_info* %95, %struct.gpiochip_info** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %92, %85
  br label %99

99:                                               ; preds = %98, %37
  br label %32

100:                                              ; preds = %32
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104, %100
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %104
  %112 = load %struct.gpiochip_info*, %struct.gpiochip_info** %5, align 8
  %113 = call i32 @free(%struct.gpiochip_info* %112)
  store %struct.gpiochip_info* null, %struct.gpiochip_info** %5, align 8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.gpiochip_info*, %struct.gpiochip_info** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 16, %124
  %126 = trunc i64 %125 to i32
  %127 = call %struct.gpiochip_info* @realloc(%struct.gpiochip_info* %122, i32 %126)
  store %struct.gpiochip_info* %127, %struct.gpiochip_info** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32*, i32** %4, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %121, %118, %114
  br label %131

131:                                              ; preds = %130, %74, %58
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @closedir(i32* %132)
  br label %134

134:                                              ; preds = %131, %52, %25
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* @EXIT_FAILURE, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strerror(i32 %141)
  %143 = call i32 (i32, i8*, ...) @err(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %138, %134
  %145 = load %struct.gpiochip_info*, %struct.gpiochip_info** %5, align 8
  ret %struct.gpiochip_info* %145
}

declare dso_local %struct.gpiochip_info* @calloc(i32, i64) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @check_prefix(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.gpiochip_info*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(%struct.gpiochip_info*) #1

declare dso_local %struct.gpiochip_info* @realloc(%struct.gpiochip_info*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
