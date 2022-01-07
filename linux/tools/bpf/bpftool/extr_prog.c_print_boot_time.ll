; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_print_boot_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_print_boot_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.tm = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Can't read clocks\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@json_output = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%FT%T%z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @print_boot_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_boot_time(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* @CLOCK_REALTIME, align 4
  %17 = call i64 @clock_gettime(i32 %16, %struct.timespec* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @CLOCK_BOOTTIME, align 4
  %21 = call i64 @clock_gettime(i32 %20, %struct.timespec* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %3
  %24 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 1000000000
  %29 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %65

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %37, %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %40, %41
  %43 = sdiv i32 %42, 1000000000
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %35, %44
  store i64 %45, i64* %9, align 8
  %46 = call i32 @localtime_r(i64* %9, %struct.tm* %10)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %30
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sdiv i32 %51, 1000000000
  %53 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %65

54:                                               ; preds = %30
  %55 = load i64, i64* @json_output, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @strftime(i8* %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %10)
  br label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @strftime(i8* %62, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %10)
  br label %65

65:                                               ; preds = %23, %48, %61, %57
  ret void
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
