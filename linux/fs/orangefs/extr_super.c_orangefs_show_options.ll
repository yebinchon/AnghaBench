; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.orangefs_sb_info_s = type { i32 }

@SB_POSIXACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@ORANGEFS_OPT_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c",intr\00", align 1
@ORANGEFS_OPT_LOCAL_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c",local_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @orangefs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.orangefs_sb_info_s*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.orangefs_sb_info_s* @ORANGEFS_SB(%struct.TYPE_2__* %8)
  store %struct.orangefs_sb_info_s* %9, %struct.orangefs_sb_info_s** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SB_POSIXACL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %5, align 8
  %23 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ORANGEFS_OPT_INTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %5, align 8
  %33 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ORANGEFS_OPT_LOCAL_LOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31
  ret i32 0
}

declare dso_local %struct.orangefs_sb_info_s* @ORANGEFS_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
