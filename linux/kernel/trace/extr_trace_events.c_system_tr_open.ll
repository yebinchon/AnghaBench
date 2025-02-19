; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_system_tr_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_system_tr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.file = type { %struct.trace_subsystem_dir* }
%struct.trace_subsystem_dir = type { %struct.trace_array* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @system_tr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @system_tr_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_subsystem_dir*, align 8
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.trace_subsystem_dir* @kzalloc(i32 8, i32 %12)
  store %struct.trace_subsystem_dir* %13, %struct.trace_subsystem_dir** %6, align 8
  %14 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %6, align 8
  %15 = icmp ne %struct.trace_subsystem_dir* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @tracing_open_generic_tr(%struct.inode* %20, %struct.file* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %6, align 8
  %27 = call i32 @kfree(%struct.trace_subsystem_dir* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %19
  %30 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %31 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %6, align 8
  %32 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %31, i32 0, i32 0
  store %struct.trace_array* %30, %struct.trace_array** %32, align 8
  %33 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %6, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store %struct.trace_subsystem_dir* %33, %struct.trace_subsystem_dir** %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %25, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.trace_subsystem_dir* @kzalloc(i32, i32) #1

declare dso_local i32 @tracing_open_generic_tr(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(%struct.trace_subsystem_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
