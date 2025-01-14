; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_kernel_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_kernel_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_clone_args = type { i64, i64, i64, i64 }

@CLONE_VM = common dso_local global i64 0, align 8
@CLONE_UNTRACED = common dso_local global i64 0, align 8
@CSIGNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_thread(i32 (i8*)* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kernel_clone_args, align 8
  store i32 (i8*)* %0, i32 (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @CLONE_VM, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @CLONE_UNTRACED, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @CSIGNAL, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  store i64 %16, i64* %8, align 8
  %17 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %7, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CSIGNAL, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %17, align 8
  %21 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %7, i32 0, i32 2
  %22 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %23 = ptrtoint i32 (i8*)* %22 to i64
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %7, i32 0, i32 3
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %24, align 8
  %27 = call i32 @_do_fork(%struct.kernel_clone_args* %7)
  ret i32 %27
}

declare dso_local i32 @_do_fork(%struct.kernel_clone_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
