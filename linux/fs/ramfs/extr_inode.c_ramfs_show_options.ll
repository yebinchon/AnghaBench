; ModuleID = '/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ramfs/extr_inode.c_ramfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ramfs_fs_info* }
%struct.ramfs_fs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RAMFS_DEFAULT_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @ramfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ramfs_fs_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %9, align 8
  store %struct.ramfs_fs_info* %10, %struct.ramfs_fs_info** %5, align 8
  %11 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %5, align 8
  %12 = getelementptr inbounds %struct.ramfs_fs_info, %struct.ramfs_fs_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RAMFS_DEFAULT_MODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.ramfs_fs_info*, %struct.ramfs_fs_info** %5, align 8
  %20 = getelementptr inbounds %struct.ramfs_fs_info, %struct.ramfs_fs_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
