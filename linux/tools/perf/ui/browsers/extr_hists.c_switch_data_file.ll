; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_switch_data_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_switch_data_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't search all data files due to memory shortage.\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Too many perf data files in PWD!\0AOnly the first 32 files will be listed.\0A\00", align 1
@is_input_name_malloced = common dso_local global i32 0, align 4
@input_name = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Data switch failed due to memory shortage!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @switch_data_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_data_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8*], align 16
  %4 = alloca [32 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %17 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %1, align 4
  br label %159

22:                                               ; preds = %0
  %23 = load i8*, i8** %2, align 8
  %24 = call i32* @opendir(i8* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %1, align 4
  br label %159

29:                                               ; preds = %22
  %30 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 0
  %31 = call i32 @memset(i8** %30, i32 0, i32 256)
  %32 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %33 = call i32 @memset(i8** %32, i32 0, i32 256)
  br label %34

34:                                               ; preds = %115, %112, %29
  %35 = load i32*, i32** %6, align 8
  %36 = call %struct.dirent* @readdir(i32* %35)
  store %struct.dirent* %36, %struct.dirent** %10, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br i1 %37, label %38, label %116

38:                                               ; preds = %34
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %11, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %12, align 8
  %43 = load %struct.dirent*, %struct.dirent** %10, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  %46 = load %struct.dirent*, %struct.dirent** %10, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DT_REG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  store i32 2, i32* %16, align 4
  br label %112

52:                                               ; preds = %38
  %53 = trunc i64 %40 to i32
  %54 = load i8*, i8** %2, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @snprintf(i8* %42, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  %57 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 2, i32* %16, align 4
  br label %112

61:                                               ; preds = %52
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @fread(i32* %13, i32 1, i32 8, i32* %62)
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %104

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @is_perf_magic(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %66
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* @strdup(i8* %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %74
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %104

82:                                               ; preds = %70
  %83 = call i8* @strdup(i8* %42)
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %85
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %94
  %96 = call i32 @zfree(i8** %95)
  %97 = call i32 @ui__warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @fclose(i32* %98)
  store i32 3, i32* %16, align 4
  br label %112

100:                                              ; preds = %82
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %66
  br label %104

104:                                              ; preds = %103, %81, %65
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @fclose(i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %107, 32
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @ui__warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  store i32 3, i32* %16, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %111, %109, %92, %60, %51
  %113 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %16, align 4
  switch i32 %114, label %161 [
    i32 0, label %115
    i32 2, label %34
    i32 3, label %116
  ]

115:                                              ; preds = %112
  br label %34

116:                                              ; preds = %112, %34
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @closedir(i32* %117)
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 0
  %124 = call i32 @ui__popup_menu(i32 %122, i8** %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %121
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @strdup(i8* %135)
  store i8* %136, i8** %5, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i32, i32* @is_input_name_malloced, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** @input_name, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8*, i8** %5, align 8
  store i8* %146, i8** @input_name, align 8
  store i32 1, i32* @is_input_name_malloced, align 4
  store i32 0, i32* %9, align 4
  br label %149

147:                                              ; preds = %131
  %148 = call i32 @ui__warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %145
  br label %150

150:                                              ; preds = %149, %128, %121
  br label %151

151:                                              ; preds = %150, %116
  %152 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 0
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @free_popup_options(i8** %152, i32 %153)
  %155 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @free_popup_options(i8** %155, i32 %156)
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %1, align 4
  br label %159

159:                                              ; preds = %151, %27, %20
  %160 = load i32, i32* %1, align 4
  ret i32 %160

161:                                              ; preds = %112
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @is_perf_magic(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @ui__warning(i8*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @ui__popup_menu(i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_popup_options(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
