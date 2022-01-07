; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.jffs2_sb_info = type { %struct.jffs2_mount_opts }
%struct.jffs2_mount_opts = type { i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c",compr=%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c",rp_size=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @jffs2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_mount_opts*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %9)
  store %struct.jffs2_sb_info* %10, %struct.jffs2_sb_info** %5, align 8
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 0
  store %struct.jffs2_mount_opts* %12, %struct.jffs2_mount_opts** %6, align 8
  %13 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %6, align 8
  %14 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %6, align 8
  %20 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @jffs2_compr_name(i32 %21)
  %23 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %6, align 8
  %26 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.jffs2_mount_opts*, %struct.jffs2_mount_opts** %6, align 8
  %32 = getelementptr inbounds %struct.jffs2_mount_opts, %struct.jffs2_mount_opts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 1024
  %35 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %24
  ret i32 0
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @jffs2_compr_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
