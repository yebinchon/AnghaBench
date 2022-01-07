; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_config_show.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_config_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kmod_test_device = type { i32, %struct.test_config }
%struct.test_config = type { i32, i32, i8*, i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Custom trigger configuration for: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Number of threads:\09%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Test_case:\09%s (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"driver:\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"driver:\09EMPTY\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fs:\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fs:\09EMPTY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @config_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kmod_test_device*, align 8
  %8 = alloca %struct.test_config*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.kmod_test_device* @dev_to_test_dev(%struct.device* %10)
  store %struct.kmod_test_device* %11, %struct.kmod_test_device** %7, align 8
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 1
  store %struct.test_config* %13, %struct.test_config** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %15 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i8* @dev_name(%struct.device* %19)
  %21 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %30, %32
  %34 = load %struct.test_config*, %struct.test_config** %8, align 8
  %35 = getelementptr inbounds %struct.test_config, %struct.test_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  %50 = load %struct.test_config*, %struct.test_config** %8, align 8
  %51 = getelementptr inbounds %struct.test_config, %struct.test_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @test_case_str(i32 %52)
  %54 = load %struct.test_config*, %struct.test_config** %8, align 8
  %55 = getelementptr inbounds %struct.test_config, %struct.test_config* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %45, i64 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.test_config*, %struct.test_config** %8, align 8
  %63 = getelementptr inbounds %struct.test_config, %struct.test_config* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %3
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = load %struct.test_config*, %struct.test_config** %8, align 8
  %76 = getelementptr inbounds %struct.test_config, %struct.test_config* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %70, i64 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %97

83:                                               ; preds = %3
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %87, i64 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %83, %66
  %98 = load %struct.test_config*, %struct.test_config** %8, align 8
  %99 = getelementptr inbounds %struct.test_config, %struct.test_config* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %107, %109
  %111 = load %struct.test_config*, %struct.test_config** %8, align 8
  %112 = getelementptr inbounds %struct.test_config, %struct.test_config* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %106, i64 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %9, align 4
  br label %133

119:                                              ; preds = %97
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i64, i64* @PAGE_SIZE, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %124, %126
  %128 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %123, i64 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %119, %102
  %134 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %135 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local %struct.kmod_test_device* @dev_to_test_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i8* @test_case_str(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
