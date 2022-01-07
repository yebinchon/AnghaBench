; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_access_sysctl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_access_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_test = type { i32, i32, i32, i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"lseek(%d) failed\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Read value %s != %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"New value for sysctl is not set\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Unexpected sysctl access: neither read nor write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sysctl_test*)* @access_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_sysctl(i8* %0, %struct.sysctl_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysctl_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.sysctl_test* %1, %struct.sysctl_test** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %11 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @O_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %9, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %22 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %28 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i32 @lseek(i32 %26, i32 %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %35 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %103

38:                                               ; preds = %25, %20
  %39 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %40 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %47 = call i32 @read(i32 %45, i8* %46, i32 128)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %103

50:                                               ; preds = %44
  %51 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %52 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %57 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %58 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %61 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlen(i32 %62)
  %64 = call i64 @strncmp(i8* %56, i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %68 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %69 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %70)
  br label %103

72:                                               ; preds = %55, %50
  br label %102

73:                                               ; preds = %38
  %74 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %75 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @O_WRONLY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %81 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %103

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %89 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sysctl_test*, %struct.sysctl_test** %5, align 8
  %92 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strlen(i32 %93)
  %95 = call i32 @write(i32 %87, i32 %90, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %103

98:                                               ; preds = %86
  br label %101

99:                                               ; preds = %73
  %100 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %103

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %72
  br label %104

103:                                              ; preds = %99, %97, %84, %66, %49, %33
  store i32 -1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
