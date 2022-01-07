; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_parse_clockid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_parse_clockid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockid_map = type { i32, i64 }
%struct.option = type { i64 }
%struct.record_opts = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CLOCK_\00", align 1
@clockids = common dso_local global %struct.clockid_map* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"unknown clockid %s, check man page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_clockid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_clockid(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.record_opts*, align 8
  %9 = alloca %struct.clockid_map*, align 8
  %10 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.option*, %struct.option** %5, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.record_opts*
  store %struct.record_opts* %14, %struct.record_opts** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %20 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %88

25:                                               ; preds = %21
  %26 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %27 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %88

31:                                               ; preds = %25
  %32 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %33 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %36 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %35, i32 0, i32 2
  %37 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %41 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %44 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %43, i32 0, i32 1
  %45 = call i32 @get_clockid_res(i32 %42, i32* %44)
  store i32 %45, i32* %4, align 4
  br label %88

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strncasecmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.clockid_map*, %struct.clockid_map** @clockids, align 8
  store %struct.clockid_map* %54, %struct.clockid_map** %9, align 8
  br label %55

55:                                               ; preds = %80, %53
  %56 = load %struct.clockid_map*, %struct.clockid_map** %9, align 8
  %57 = getelementptr inbounds %struct.clockid_map, %struct.clockid_map* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.clockid_map*, %struct.clockid_map** %9, align 8
  %63 = getelementptr inbounds %struct.clockid_map, %struct.clockid_map* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @strcasecmp(i8* %61, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %60
  %68 = load %struct.clockid_map*, %struct.clockid_map** %9, align 8
  %69 = getelementptr inbounds %struct.clockid_map, %struct.clockid_map* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %72 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %74 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %77 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %76, i32 0, i32 1
  %78 = call i32 @get_clockid_res(i32 %75, i32* %77)
  store i32 %78, i32* %4, align 4
  br label %88

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.clockid_map*, %struct.clockid_map** %9, align 8
  %82 = getelementptr inbounds %struct.clockid_map, %struct.clockid_map* %81, i32 1
  store %struct.clockid_map* %82, %struct.clockid_map** %9, align 8
  br label %55

83:                                               ; preds = %55
  %84 = load %struct.record_opts*, %struct.record_opts** %8, align 8
  %85 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @ui__warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  store i32 -1, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %67, %39, %30, %24, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @get_clockid_res(i32, i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i64) #1

declare dso_local i32 @ui__warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
