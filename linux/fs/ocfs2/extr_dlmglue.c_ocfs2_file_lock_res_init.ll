; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_file_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32 }

@OCFS2_LOCK_TYPE_FLOCK = common dso_local global i32 0, align 4
@ocfs2_flock_lops = common dso_local global i32 0, align 4
@OCFS2_LOCK_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_file_lock_res_init(%struct.ocfs2_lock_res* %0, %struct.ocfs2_file_private* %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca %struct.ocfs2_file_private*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store %struct.ocfs2_file_private* %1, %struct.ocfs2_file_private** %4, align 8
  %7 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %14)
  store %struct.ocfs2_inode_info* %15, %struct.ocfs2_inode_info** %6, align 8
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %17 = call i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res* %16)
  %18 = load i32, i32* @OCFS2_LOCK_TYPE_FLOCK, align 4
  %19 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocfs2_build_lock_name(i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OCFS2_SB(i32 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %34 = load i32, i32* @OCFS2_LOCK_TYPE_FLOCK, align 4
  %35 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %4, align 8
  %36 = call i32 @ocfs2_lock_res_init_common(i32 %32, %struct.ocfs2_lock_res* %33, i32 %34, i32* @ocfs2_flock_lops, %struct.ocfs2_file_private* %35)
  %37 = load i32, i32* @OCFS2_LOCK_NOCACHE, align 4
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_build_lock_name(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_res_init_common(i32, %struct.ocfs2_lock_res*, i32, i32*, %struct.ocfs2_file_private*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
