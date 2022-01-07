; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_poll.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i16, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"poll: unexpected event 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i16, i32)* @do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_poll(i32 %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i16, i16* %5, align 2
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 1
  store i16 %11, i16* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @poll(%struct.pollfd* %7, i32 1, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @POLLIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %23, %20
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
