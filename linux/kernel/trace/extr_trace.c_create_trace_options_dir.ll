; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_options_dir.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_options_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.dentry = type { i32 }

@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 4
@trace_options = common dso_local global i64* null, align 8
@TOP_LEVEL_TRACE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @create_trace_options_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_trace_options_dir(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %6 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %7 = icmp eq %struct.trace_array* %6, @global_trace
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %10 = call %struct.dentry* @trace_options_init_dentry(%struct.trace_array* %9)
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %44

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i64*, i64** @trace_options, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @TOP_LEVEL_TRACE_FLAGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %33 = load i64*, i64** @trace_options, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @create_trace_option_core_file(%struct.trace_array* %32, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %13, %15
  ret void
}

declare dso_local %struct.dentry* @trace_options_init_dentry(%struct.trace_array*) #1

declare dso_local i32 @create_trace_option_core_file(%struct.trace_array*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
