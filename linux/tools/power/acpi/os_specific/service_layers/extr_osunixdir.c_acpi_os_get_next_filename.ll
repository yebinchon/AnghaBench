; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_osunixdir.c_acpi_os_get_next_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_osunixdir.c_acpi_os_get_next_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.external_find_info = type { i8*, i64, i8*, i32, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not allocate buffer for temporary string\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot stat file (should not happen) - %s\0A\00", align 1
@REQUEST_DIR_ONLY = common dso_local global i64 0, align 8
@REQUEST_FILE_ONLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_os_get_next_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.external_find_info*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.external_find_info*
  store %struct.external_find_info* %11, %struct.external_find_info** %4, align 8
  br label %12

12:                                               ; preds = %113, %35, %1
  %13 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %14 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dirent* @readdir(i32 %15)
  store %struct.dirent* %16, %struct.dirent** %5, align 8
  %17 = icmp ne %struct.dirent* %16, null
  br i1 %17, label %18, label %114

18:                                               ; preds = %12
  %19 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %20 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dirent*, %struct.dirent** %5, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fnmatch(i32 %21, i8* %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %18
  %28 = load %struct.dirent*, %struct.dirent** %5, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %12

36:                                               ; preds = %27
  %37 = load %struct.dirent*, %struct.dirent** %5, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %42 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %40, %44
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @calloc(i32 %47, i32 1)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %115

54:                                               ; preds = %36
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %57 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcpy(i8* %55, i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.dirent*, %struct.dirent** %5, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcat(i8* %62, i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @stat(i8* %67, %struct.stat* %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %54
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %2, align 8
  br label %115

77:                                               ; preds = %54
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @free(i8* %78)
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @S_ISDIR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %86 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @REQUEST_DIR_ONLY, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %101, label %90

90:                                               ; preds = %84, %77
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @S_ISDIR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %90
  %96 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %97 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @REQUEST_FILE_ONLY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95, %84
  %102 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %103 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.dirent*, %struct.dirent** %5, align 8
  %106 = getelementptr inbounds %struct.dirent, %struct.dirent* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcpy(i8* %104, i8* %107)
  %109 = load %struct.external_find_info*, %struct.external_find_info** %4, align 8
  %110 = getelementptr inbounds %struct.external_find_info, %struct.external_find_info* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %2, align 8
  br label %115

112:                                              ; preds = %95, %90
  br label %113

113:                                              ; preds = %112, %18
  br label %12

114:                                              ; preds = %12
  store i8* null, i8** %2, align 8
  br label %115

115:                                              ; preds = %114, %101, %71, %51
  %116 = load i8*, i8** %2, align 8
  ret i8* %116
}

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @fnmatch(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
