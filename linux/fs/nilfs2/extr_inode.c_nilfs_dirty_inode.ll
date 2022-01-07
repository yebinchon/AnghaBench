; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_transaction_info = type { i32 }
%struct.nilfs_mdt_info = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"tried to mark bad_inode dirty. ignored.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_dirty_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_transaction_info, align 4
  %6 = alloca %struct.nilfs_mdt_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode* %7)
  store %struct.nilfs_mdt_info* %8, %struct.nilfs_mdt_info** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @is_bad_inode(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KERN_WARNING, align 4
  %17 = call i32 @nilfs_msg(i32 %15, i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @dump_stack()
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %6, align 8
  %21 = icmp ne %struct.nilfs_mdt_info* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %23)
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nilfs_transaction_begin(i32 %28, %struct.nilfs_transaction_info* %5, i32 0)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @__nilfs_mark_inode_dirty(%struct.inode* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nilfs_transaction_commit(i32 %35)
  br label %37

37:                                               ; preds = %25, %22, %12
  ret void
}

declare dso_local %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @__nilfs_mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
