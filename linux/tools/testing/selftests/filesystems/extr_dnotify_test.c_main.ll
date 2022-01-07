; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_dnotify_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_dnotify_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@handler = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@F_SETSIG = common dso_local global i32 0, align 4
@F_NOTIFY = common dso_local global i32 0, align 4
@DN_MODIFY = common dso_local global i32 0, align 4
@DN_CREATE = common dso_local global i32 0, align 4
@DN_MULTISHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Got event on fd=%d\0A\00", align 1
@event_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @handler, align 4
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %7 = call i32 @sigemptyset(i32* %6)
  %8 = load i32, i32* @SA_SIGINFO, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SIGRTMIN, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @sigaction(i32 %11, %struct.sigaction* %2, i32* null)
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @F_SETSIG, align 4
  %17 = load i32, i32* @SIGRTMIN, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @fcntl(i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @F_NOTIFY, align 4
  %22 = load i32, i32* @DN_MODIFY, align 4
  %23 = load i32, i32* @DN_CREATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DN_MULTISHOT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @fcntl(i32 %20, i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %0, %28
  %29 = call i32 (...) @pause()
  %30 = load i32, i32* @event_fd, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %28
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @pause(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
