; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_free_eofblocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_free_eofblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"Failed to update on disk inode for unused fallocated blocks, inode could be corrupted. Please run fsck\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @fat_free_eofblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_free_eofblocks(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 9
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_3__* @MSDOS_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @round_up(i32 %11, i32 %17)
  %19 = icmp sgt i32 %7, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fat_truncate_blocks(%struct.inode* %21, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call i32 @inode_needs_sync(%struct.inode* %28)
  %30 = call i32 @__fat_write_inode(%struct.inode* %27, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KERN_WARNING, align 4
  %38 = call i32 @fat_msg(i32 %36, i32 %37, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %20
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @MSDOS_SB(i32) #1

declare dso_local i32 @fat_truncate_blocks(%struct.inode*, i32) #1

declare dso_local i32 @__fat_write_inode(%struct.inode*, i32) #1

declare dso_local i32 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @fat_msg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
