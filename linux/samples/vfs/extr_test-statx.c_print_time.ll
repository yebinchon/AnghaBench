; ModuleID = '/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_print_time.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_print_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statx_timestamp = type { i32, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"localtime_r\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%F %T\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c".%09u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"strftime2\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.statx_timestamp*)* @print_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_time(i8* %0, %struct.statx_timestamp* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statx_timestamp*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.statx_timestamp* %1, %struct.statx_timestamp** %4, align 8
  %9 = load %struct.statx_timestamp*, %struct.statx_timestamp** %4, align 8
  %10 = getelementptr inbounds %struct.statx_timestamp, %struct.statx_timestamp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i32 @localtime_r(i32* %6, %struct.tm* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %19 = call i32 @strftime(i8* %18, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %5)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fwrite(i8* %28, i32 1, i32 %29, i32 %30)
  %32 = load %struct.statx_timestamp*, %struct.statx_timestamp** %4, align 8
  %33 = getelementptr inbounds %struct.statx_timestamp, %struct.statx_timestamp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %37 = call i32 @strftime(i8* %36, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %5)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %25
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fwrite(i8* %44, i32 1, i32 %45, i32 %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
