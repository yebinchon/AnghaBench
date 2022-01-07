; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_cg_wait_for.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_cg_wait_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Error: poll() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cg_wait_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cg_wait_for(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %5 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  %8 = load i32, i32* @POLLIN, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %1, %18, %31
  %11 = call i32 @poll(%struct.pollfd* %4, i32 1, i32 10000)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EINTR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %10

19:                                               ; preds = %14
  %20 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %32

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POLLIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %24, %21
  br label %10

32:                                               ; preds = %30, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
