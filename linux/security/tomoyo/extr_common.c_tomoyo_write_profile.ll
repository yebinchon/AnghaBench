; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tomoyo_profile = type { i32*, %struct.tomoyo_path_info* }
%struct.tomoyo_path_info = type opaque

@.str = private unnamed_addr constant [19 x i8] c"PROFILE_VERSION=%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@tomoyo_write_profile.lock = internal global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PREFERENCE\00", align 1
@TOMOYO_MAX_PREF = common dso_local global i32 0, align 4
@tomoyo_pref_keywords = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_profile(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tomoyo_profile*, align 8
  %8 = alloca %struct.tomoyo_path_info*, align 8
  %9 = alloca %struct.tomoyo_path_info*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %10 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i8** %6, i32 10)
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 45
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %111

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %4, align 8
  %35 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.tomoyo_profile* @tomoyo_assign_profile(%struct.TYPE_4__* %38, i32 %39)
  store %struct.tomoyo_profile* %40, %struct.tomoyo_profile** %7, align 8
  %41 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %42 = icmp ne %struct.tomoyo_profile* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %111

46:                                               ; preds = %32
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 61)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %111

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 0, i8* %55, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call %struct.tomoyo_path_info* @tomoyo_get_name(i8* %61)
  store %struct.tomoyo_path_info* %62, %struct.tomoyo_path_info** %8, align 8
  %63 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %8, align 8
  %64 = icmp ne %struct.tomoyo_path_info* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %111

68:                                               ; preds = %60
  %69 = call i32 @spin_lock(i32* @tomoyo_write_profile.lock)
  %70 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %71 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %70, i32 0, i32 1
  %72 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %71, align 8
  store %struct.tomoyo_path_info* %72, %struct.tomoyo_path_info** %9, align 8
  %73 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %8, align 8
  %74 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %75 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %74, i32 0, i32 1
  store %struct.tomoyo_path_info* %73, %struct.tomoyo_path_info** %75, align 8
  %76 = call i32 @spin_unlock(i32* @tomoyo_write_profile.lock)
  %77 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %78 = call i32 @tomoyo_put_name(%struct.tomoyo_path_info* %77)
  store i32 0, i32* %2, align 4
  br label %111

79:                                               ; preds = %54
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @TOMOYO_MAX_PREF, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %90 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i8*, i8** %6, align 8
  %96 = load i32*, i32** @tomoyo_pref_keywords, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tomoyo_set_uint(i32* %94, i8* %95, i32 %100)
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %5, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %84

105:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %111

106:                                              ; preds = %79
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %110 = call i32 @tomoyo_set_mode(i8* %107, i8* %108, %struct.tomoyo_profile* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %105, %68, %65, %51, %43, %29, %21
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.tomoyo_profile* @tomoyo_assign_profile(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_name(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tomoyo_put_name(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_set_uint(i32*, i8*, i32) #1

declare dso_local i32 @tomoyo_set_mode(i8*, i8*, %struct.tomoyo_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
