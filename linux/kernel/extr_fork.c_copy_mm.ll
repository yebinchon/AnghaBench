; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_copy_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_copy_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { %struct.mm_struct*, %struct.mm_struct*, i64, i64, i64, i64, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@CLONE_VM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*)* @copy_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_mm(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 1
  store %struct.mm_struct* null, %struct.mm_struct** %18, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  store %struct.mm_struct* null, %struct.mm_struct** %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %7, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call i32 @vmacache_flush(%struct.task_struct* %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @CLONE_VM, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %36 = call i32 @mmget(%struct.mm_struct* %35)
  %37 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %37, %struct.mm_struct** %6, align 8
  br label %50

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mm_struct*, %struct.mm_struct** %43, align 8
  %45 = call %struct.mm_struct* @dup_mm(%struct.task_struct* %41, %struct.mm_struct* %44)
  store %struct.mm_struct* %45, %struct.mm_struct** %6, align 8
  %46 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %47 = icmp ne %struct.mm_struct* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %57

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 1
  store %struct.mm_struct* %51, %struct.mm_struct** %53, align 8
  %54 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  store %struct.mm_struct* %54, %struct.mm_struct** %56, align 8
  store i32 0, i32* %3, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %50, %26
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @vmacache_flush(%struct.task_struct*) #1

declare dso_local i32 @mmget(%struct.mm_struct*) #1

declare dso_local %struct.mm_struct* @dup_mm(%struct.task_struct*, %struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
