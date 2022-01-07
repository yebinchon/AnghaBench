; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_sysfs_get_cpu_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_sysfs_get_cpu_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_affected_cpus = type { %struct.cpufreq_affected_cpus*, i32, %struct.cpufreq_affected_cpus* }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@MAX_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpufreq_affected_cpus* (i32, i8*)* @sysfs_get_cpu_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpufreq_affected_cpus* @sysfs_get_cpu_list(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.cpufreq_affected_cpus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpufreq_affected_cpus*, align 8
  %7 = alloca %struct.cpufreq_affected_cpus*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.cpufreq_affected_cpus* null, %struct.cpufreq_affected_cpus** %6, align 8
  store %struct.cpufreq_affected_cpus* null, %struct.cpufreq_affected_cpus** %7, align 8
  %15 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MAX_LINE_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = trunc i64 %20 to i32
  %25 = call i32 @sysfs_cpufreq_read_file(i32 %22, i8* %23, i8* %21, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store %struct.cpufreq_affected_cpus* null, %struct.cpufreq_affected_cpus** %3, align 8
  store i32 1, i32* %14, align 4
  br label %134

29:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %117, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %120

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %21, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %21, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %116

52:                                               ; preds = %45, %38, %34
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub i32 %53, %54
  %56 = icmp ult i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %117

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub i32 %59, %60
  %62 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %63 = icmp uge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %122

65:                                               ; preds = %58
  %66 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %67 = icmp ne %struct.cpufreq_affected_cpus* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = call i8* @malloc(i32 24)
  %70 = bitcast i8* %69 to %struct.cpufreq_affected_cpus*
  %71 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %72 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %71, i32 0, i32 0
  store %struct.cpufreq_affected_cpus* %70, %struct.cpufreq_affected_cpus** %72, align 8
  %73 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %74 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %73, i32 0, i32 0
  %75 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %74, align 8
  %76 = icmp ne %struct.cpufreq_affected_cpus* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %122

78:                                               ; preds = %68
  %79 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %80 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %79, i32 0, i32 0
  %81 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %80, align 8
  store %struct.cpufreq_affected_cpus* %81, %struct.cpufreq_affected_cpus** %7, align 8
  br label %90

82:                                               ; preds = %65
  %83 = call i8* @malloc(i32 24)
  %84 = bitcast i8* %83 to %struct.cpufreq_affected_cpus*
  store %struct.cpufreq_affected_cpus* %84, %struct.cpufreq_affected_cpus** %6, align 8
  %85 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  %86 = icmp ne %struct.cpufreq_affected_cpus* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %122

88:                                               ; preds = %82
  %89 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  store %struct.cpufreq_affected_cpus* %89, %struct.cpufreq_affected_cpus** %7, align 8
  br label %90

90:                                               ; preds = %88, %78
  %91 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  %92 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %93 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %92, i32 0, i32 2
  store %struct.cpufreq_affected_cpus* %91, %struct.cpufreq_affected_cpus** %93, align 8
  %94 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %95 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %94, i32 0, i32 0
  store %struct.cpufreq_affected_cpus* null, %struct.cpufreq_affected_cpus** %95, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %21, i64 %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub i32 %99, %100
  %102 = call i32 @memcpy(i8* %18, i8* %98, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %18, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  %109 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %108, i32 0, i32 1
  %110 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %109)
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %90
  br label %122

113:                                              ; preds = %90
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %45
  br label %117

117:                                              ; preds = %116, %57
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %30

120:                                              ; preds = %30
  %121 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  store %struct.cpufreq_affected_cpus* %121, %struct.cpufreq_affected_cpus** %3, align 8
  store i32 1, i32* %14, align 4
  br label %134

122:                                              ; preds = %112, %87, %77, %64
  br label %123

123:                                              ; preds = %126, %122
  %124 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  %125 = icmp ne %struct.cpufreq_affected_cpus* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  %128 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %127, i32 0, i32 0
  %129 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %128, align 8
  store %struct.cpufreq_affected_cpus* %129, %struct.cpufreq_affected_cpus** %7, align 8
  %130 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %6, align 8
  %131 = call i32 @free(%struct.cpufreq_affected_cpus* %130)
  %132 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %7, align 8
  store %struct.cpufreq_affected_cpus* %132, %struct.cpufreq_affected_cpus** %6, align 8
  br label %123

133:                                              ; preds = %123
  store %struct.cpufreq_affected_cpus* null, %struct.cpufreq_affected_cpus** %3, align 8
  store i32 1, i32* %14, align 4
  br label %134

134:                                              ; preds = %133, %120, %28
  %135 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %3, align 8
  ret %struct.cpufreq_affected_cpus* %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysfs_cpufreq_read_file(i32, i8*, i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @free(%struct.cpufreq_affected_cpus*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
