; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32, i32 }

@OCFS2_INODE_OPEN_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %6)
  store %struct.ocfs2_inode_info* %7, %struct.ocfs2_inode_info** %5, align 8
  %8 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %9 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @OCFS2_INODE_OPEN_DIRECT, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trace_ocfs2_file_release(%struct.inode* %24, %struct.file* %25, %struct.TYPE_6__* %29, i32 %32, i32 %39, i32 %46, i32 %49)
  %51 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = call i32 @ocfs2_free_file_private(%struct.inode* %54, %struct.file* %55)
  ret i32 0
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_ocfs2_file_release(%struct.inode*, %struct.file*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_free_file_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
