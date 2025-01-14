; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_debug_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_debug_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32 }
%struct.file = type { i32 }
%struct.ocfs2_dlm_seq_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ocfs2_dlm_seq_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_dlm_debug_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dlm_debug_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ocfs2_dlm_seq_priv*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = call %struct.ocfs2_dlm_seq_priv* @__seq_open_private(%struct.file* %8, i32* @ocfs2_dlm_seq_ops, i32 8)
  store %struct.ocfs2_dlm_seq_priv* %9, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %10 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %11 = icmp ne %struct.ocfs2_dlm_seq_priv* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @mlog_errno(i32 %14)
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %7, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ocfs2_get_dlm_debug(i32 %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %35, i32 0, i32 1
  %37 = load %struct.ocfs2_dlm_seq_priv*, %struct.ocfs2_dlm_seq_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dlm_seq_priv, %struct.ocfs2_dlm_seq_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_add_lockres_tracking(%struct.TYPE_2__* %36, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %18, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ocfs2_dlm_seq_priv* @__seq_open_private(%struct.file*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_dlm_debug(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ocfs2_add_lockres_tracking(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
