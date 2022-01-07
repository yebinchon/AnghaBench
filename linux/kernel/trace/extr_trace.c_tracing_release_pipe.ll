; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_release_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_release_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.trace_iterator*)* }

@trace_types_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_release_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_release_pipe(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca %struct.trace_array*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  store %struct.trace_iterator* %9, %struct.trace_iterator** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  store %struct.trace_array* %12, %struct.trace_array** %6, align 8
  %13 = call i32 @mutex_lock(i32* @trace_types_lock)
  %14 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %15 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %23, align 8
  %25 = icmp ne i32 (%struct.trace_iterator*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %30, align 8
  %32 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %33 = call i32 %31(%struct.trace_iterator* %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @free_cpumask_var(i32 %38)
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %41 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %40, i32 0, i32 0
  %42 = call i32 @mutex_destroy(i32* %41)
  %43 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %44 = call i32 @kfree(%struct.trace_iterator* %43)
  %45 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %46 = call i32 @trace_array_put(%struct.trace_array* %45)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.trace_iterator*) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
