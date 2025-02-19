; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qnx6_sb_info = type { i32 }

@QNX6_MOUNT_MMI_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",mmi_fs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @qnx6_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx6_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.qnx6_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %10)
  store %struct.qnx6_sb_info* %11, %struct.qnx6_sb_info** %6, align 8
  %12 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %13 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QNX6_MOUNT_MMI_FS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
