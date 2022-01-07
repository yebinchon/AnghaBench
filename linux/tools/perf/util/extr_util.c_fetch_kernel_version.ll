; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_fetch_kernel_version.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_fetch_kernel_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"/proc/version_signature\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to get kernel version from uname '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_kernel_version(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.utsname, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @R_OK, align 4
  %15 = call i64 @access(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @fetch_ubuntu_kernel_version(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* %13, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %3
  %24 = call i64 @uname(%struct.utsname* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %69

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @strncpy(i8* %34, i32 %36, i64 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %33, %30, %27
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i32 0, i32* %4, align 4
  br label %69

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sscanf(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %4, align 4
  br label %69

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 8
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %60, %56, %49, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @fetch_ubuntu_kernel_version(i32*) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
