; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_time_stamp_mode_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_time_stamp_mode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.file = type { i32 }

@tracing_time_stamp_mode_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_time_stamp_mode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_time_stamp_mode_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  store %struct.trace_array* %10, %struct.trace_array** %6, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %12 = call i32 @tracing_check_open_get_tr(%struct.trace_array* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load i32, i32* @tracing_time_stamp_mode_show, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.trace_array*, %struct.trace_array** %21, align 8
  %23 = call i32 @single_open(%struct.file* %18, i32 %19, %struct.trace_array* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %28 = call i32 @trace_array_put(%struct.trace_array* %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local i32 @single_open(%struct.file*, i32, %struct.trace_array*) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
