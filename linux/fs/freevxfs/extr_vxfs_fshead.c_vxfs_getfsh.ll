; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_fshead.c_vxfs_getfsh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_fshead.c_vxfs_getfsh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_fsh = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxfs_fsh* (%struct.inode*, i32)* @vxfs_getfsh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxfs_fsh* @vxfs_getfsh(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.vxfs_fsh*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.vxfs_fsh*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.buffer_head* @vxfs_bread(%struct.inode* %8, i32 %9)
  store %struct.buffer_head* %10, %struct.buffer_head** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %12 = icmp ne %struct.buffer_head* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vxfs_fsh* @kmalloc(i32 4, i32 %14)
  store %struct.vxfs_fsh* %15, %struct.vxfs_fsh** %7, align 8
  %16 = icmp ne %struct.vxfs_fsh* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %28

18:                                               ; preds = %13
  %19 = load %struct.vxfs_fsh*, %struct.vxfs_fsh** %7, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(%struct.vxfs_fsh* %19, i32 %22, i32 4)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = call i32 @put_bh(%struct.buffer_head* %24)
  %26 = load %struct.vxfs_fsh*, %struct.vxfs_fsh** %7, align 8
  store %struct.vxfs_fsh* %26, %struct.vxfs_fsh** %3, align 8
  br label %31

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %30 = call i32 @brelse(%struct.buffer_head* %29)
  store %struct.vxfs_fsh* null, %struct.vxfs_fsh** %3, align 8
  br label %31

31:                                               ; preds = %28, %18
  %32 = load %struct.vxfs_fsh*, %struct.vxfs_fsh** %3, align 8
  ret %struct.vxfs_fsh* %32
}

declare dso_local %struct.buffer_head* @vxfs_bread(%struct.inode*, i32) #1

declare dso_local %struct.vxfs_fsh* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.vxfs_fsh*, i32, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
