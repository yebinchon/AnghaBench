; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_trace_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_trace_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_descr = type { i8* }
%struct.super_block = type { %struct.tracefs_fs_info*, i32* }
%struct.tracefs_fs_info = type { i32 }

@trace_fill_super.trace_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRACEFS_MAGIC = common dso_local global i32 0, align 4
@tracefs_super_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @trace_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracefs_fs_info*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tracefs_fs_info* @kzalloc(i32 4, i32 %10)
  store %struct.tracefs_fs_info* %11, %struct.tracefs_fs_info** %8, align 8
  %12 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  store %struct.tracefs_fs_info* %12, %struct.tracefs_fs_info** %14, align 8
  %15 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %8, align 8
  %16 = icmp ne %struct.tracefs_fs_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %8, align 8
  %23 = getelementptr inbounds %struct.tracefs_fs_info, %struct.tracefs_fs_info* %22, i32 0, i32 0
  %24 = call i32 @tracefs_parse_options(i8* %21, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i32, i32* @TRACEFS_MAGIC, align 4
  %31 = call i32 @simple_fill_super(%struct.super_block* %29, i32 %30, %struct.tree_descr* getelementptr inbounds ([1 x %struct.tree_descr], [1 x %struct.tree_descr]* @trace_fill_super.trace_files, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 1
  store i32* @tracefs_super_operations, i32** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call i32 @tracefs_apply_options(%struct.super_block* %38)
  store i32 0, i32* %4, align 4
  br label %46

40:                                               ; preds = %34, %27, %17
  %41 = load %struct.tracefs_fs_info*, %struct.tracefs_fs_info** %8, align 8
  %42 = call i32 @kfree(%struct.tracefs_fs_info* %41)
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  store %struct.tracefs_fs_info* null, %struct.tracefs_fs_info** %44, align 8
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.tracefs_fs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @tracefs_parse_options(i8*, i32*) #1

declare dso_local i32 @simple_fill_super(%struct.super_block*, i32, %struct.tree_descr*) #1

declare dso_local i32 @tracefs_apply_options(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.tracefs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
