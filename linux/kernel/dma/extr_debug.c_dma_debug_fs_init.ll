; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_fs_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_fs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dma-api\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@global_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"error_count\00", align 1
@error_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"all_errors\00", align 1
@show_all_errors = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"num_errors\00", align 1
@show_num_errors = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"num_free_entries\00", align 1
@num_free_entries = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"min_free_entries\00", align 1
@min_free_entries = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"nr_total_entries\00", align 1
@nr_total_entries = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"driver_filter\00", align 1
@filter_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@dump_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dma_debug_fs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_debug_fs_init() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %2, %struct.dentry** %1, align 8
  %3 = load %struct.dentry*, %struct.dentry** %1, align 8
  %4 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %3, i32* @global_disable)
  %5 = load %struct.dentry*, %struct.dentry** %1, align 8
  %6 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %5, i32* @error_count)
  %7 = load %struct.dentry*, %struct.dentry** %1, align 8
  %8 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.dentry* %7, i32* @show_all_errors)
  %9 = load %struct.dentry*, %struct.dentry** %1, align 8
  %10 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 420, %struct.dentry* %9, i32* @show_num_errors)
  %11 = load %struct.dentry*, %struct.dentry** %1, align 8
  %12 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %11, i32* @num_free_entries)
  %13 = load %struct.dentry*, %struct.dentry** %1, align 8
  %14 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 292, %struct.dentry* %13, i32* @min_free_entries)
  %15 = load %struct.dentry*, %struct.dentry** %1, align 8
  %16 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 292, %struct.dentry* %15, i32* @nr_total_entries)
  %17 = load %struct.dentry*, %struct.dentry** %1, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 420, %struct.dentry* %17, i32* null, i32* @filter_fops)
  %19 = load %struct.dentry*, %struct.dentry** %1, align 8
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 292, %struct.dentry* %19, i32* null, i32* @dump_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
