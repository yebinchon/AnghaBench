; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_file_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to open %s : %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @open_file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_write(%struct.perf_data* %0) #0 {
  %2 = alloca %struct.perf_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_data* %0, %struct.perf_data** %2, align 8
  %6 = load i32, i32* @STRERR_BUFSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %11 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @O_CLOEXEC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IRUSR, align 4
  %22 = load i32, i32* @S_IWUSR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i32 %13, i32 %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.perf_data*, %struct.perf_data** %2, align 8
  %29 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = trunc i64 %7 to i32
  %34 = call i32 @str_error_r(i32 %32, i8* %9, i32 %33)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i32, i32* %3, align 4
  %38 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
