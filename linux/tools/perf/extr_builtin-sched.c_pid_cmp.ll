; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_pid_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_pid_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_atoms = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_atoms*, %struct.work_atoms*)* @pid_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_cmp(%struct.work_atoms* %0, %struct.work_atoms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.work_atoms*, align 8
  %5 = alloca %struct.work_atoms*, align 8
  store %struct.work_atoms* %0, %struct.work_atoms** %4, align 8
  store %struct.work_atoms* %1, %struct.work_atoms** %5, align 8
  %6 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %7 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %10 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %16 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %21 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %29 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %34 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %52

40:                                               ; preds = %27
  %41 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %42 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %45 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = ptrtoint %struct.TYPE_2__* %43 to i64
  %48 = ptrtoint %struct.TYPE_2__* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %39, %26, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
