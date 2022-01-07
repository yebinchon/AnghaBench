; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_drop_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ocfs2_inode_info = type { i32, i64 }

@I_WILL_FREE = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %4)
  store %struct.ocfs2_inode_info* %5, %struct.ocfs2_inode_info** %3, align 8
  %6 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @trace_ocfs2_drop_inode(i64 %8, i32 %11, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = call i32 @assert_spin_locked(i32* %17)
  %19 = load i32, i32* @I_WILL_FREE, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = call i32 @write_inode_now(%struct.inode* %27, i32 1)
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I_NEW, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load i32, i32* @I_WILL_FREE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  ret i32 1
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_drop_inode(i64, i32, i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
