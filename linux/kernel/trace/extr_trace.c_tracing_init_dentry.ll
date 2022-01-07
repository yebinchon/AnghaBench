; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_init_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_init_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i64 }
%struct.dentry = type { i32 }

@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 8
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@trace_automount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @tracing_init_dentry() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* @global_trace, %struct.trace_array** %2, align 8
  %3 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %4 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %35

8:                                                ; preds = %0
  %9 = call i32 (...) @tracefs_initialized()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = call i32 (...) @debugfs_initialized()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19, %8
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dentry* @ERR_PTR(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %1, align 8
  br label %35

30:                                               ; preds = %19, %15
  %31 = load i32, i32* @trace_automount, align 4
  %32 = call i64 @debugfs_create_automount(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %31, i32* null)
  %33 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %35

35:                                               ; preds = %30, %26, %7
  %36 = load %struct.dentry*, %struct.dentry** %1, align 8
  ret %struct.dentry* %36
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tracefs_initialized(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @debugfs_initialized(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @debugfs_create_automount(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
