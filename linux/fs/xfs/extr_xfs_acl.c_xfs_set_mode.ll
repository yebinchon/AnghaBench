; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c_xfs_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.iattr = type { i32, i32, i64 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@XFS_ATTR_NOACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @xfs_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_set_mode(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iattr, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @ATTR_MODE, align 4
  %14 = load i32, i32* @ATTR_CTIME, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @current_time(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @XFS_I(%struct.inode* %22)
  %24 = load i32, i32* @XFS_ATTR_NOACL, align 4
  %25 = call i32 @xfs_setattr_nonsize(i32 %23, %struct.iattr* %6, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @xfs_setattr_nonsize(i32, %struct.iattr*, i32) #1

declare dso_local i32 @XFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
