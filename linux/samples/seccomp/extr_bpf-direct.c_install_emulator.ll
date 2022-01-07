; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_install_emulator.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_install_emulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32* }

@SIGSYS = common dso_local global i32 0, align 4
@emulator = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @install_emulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_emulator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 16)
  %5 = call i32 @sigemptyset(i32* %3)
  %6 = load i32, i32* @SIGSYS, align 4
  %7 = call i32 @sigaddset(i32* %3, i32 %6)
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i32* @emulator, i32** %8, align 8
  %9 = load i32, i32* @SA_SIGINFO, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @SIGSYS, align 4
  %12 = call i64 @sigaction(i32 %11, %struct.sigaction* %2, i32* null)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %23

16:                                               ; preds = %0
  %17 = load i32, i32* @SIG_UNBLOCK, align 4
  %18 = call i64 @sigprocmask(i32 %17, i32* %3, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %20, %14
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
