; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_copyfile.c_copyfile_mode_ns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_copyfile.c_copyfile_mode_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32 }
%struct.stat = type { i64 }
%struct.nscookie = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s.XXXXXXx\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.nsinfo*)* @copyfile_mode_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyfile_mode_ns(i8* %0, i8* %1, i32 %2, %struct.nsinfo* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nsinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nscookie, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nsinfo* %3, %struct.nsinfo** %8, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %17 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %16, %struct.nscookie* %15)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @stat(i8* %18, %struct.stat* %11)
  store i32 %19, i32* %12, align 4
  %20 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %15)
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %103

24:                                               ; preds = %4
  store i32 -1, i32* %12, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* null, i8** %13, align 8
  br label %103

29:                                               ; preds = %24
  %30 = load i8*, i8** %13, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %103

35:                                               ; preds = %29
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = sub nsw i64 %40, 1
  %42 = call i8* @memmove(i8* %37, i8* %38, i64 %41)
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  store i8 46, i8* %43, align 1
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @mkstemp(i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %103

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %57 = call i32 @slow_copyfile(i8* %54, i8* %55, %struct.nsinfo* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @fchmod(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %60, %53
  br label %91

67:                                               ; preds = %49
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @fchmod(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %91

73:                                               ; preds = %67
  %74 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %75 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %74, %struct.nscookie* %15)
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @O_RDONLY, align 4
  %78 = call i32 @open(i8* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %15)
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %91

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @copyfile_offset(i32 %84, i32 0, i32 %85, i32 0, i64 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %83, %82, %72, %66
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @link(i8* %97, i8* %98)
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @unlink(i8* %101)
  br label %103

103:                                              ; preds = %100, %48, %34, %28, %23
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* %12, align 4
  ret i32 %106
}

declare dso_local i32 @nsinfo__mountns_enter(%struct.nsinfo*, %struct.nscookie*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @slow_copyfile(i8*, i8*, %struct.nsinfo*) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @copyfile_offset(i32, i32, i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @link(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
