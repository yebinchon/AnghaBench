; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_collect_sigign_sigcatch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_collect_sigign_sigcatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@_NSIG = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32*, i32*)* @collect_sigign_sigcatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_sigign_sigcatch(%struct.task_struct* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.k_sigaction*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.k_sigaction*, %struct.k_sigaction** %12, align 8
  store %struct.k_sigaction* %13, %struct.k_sigaction** %7, align 8
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @_NSIG, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %20 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SIG_IGN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sigaddset(i32* %26, i32 %27)
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %31 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SIG_DFL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @sigaddset(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %46 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %45, i32 1
  store %struct.k_sigaction* %46, %struct.k_sigaction** %7, align 8
  br label %14

47:                                               ; preds = %14
  ret void
}

declare dso_local i32 @sigaddset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
