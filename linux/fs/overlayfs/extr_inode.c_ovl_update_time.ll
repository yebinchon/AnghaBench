; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_update_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i32 }
%struct.timespec64 = type { i32 }
%struct.path = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@S_ATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_update_time(%struct.inode* %0, %struct.timespec64* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ovl_fs*, align 8
  %8 = alloca %struct.path, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @S_ATIME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ovl_fs*, %struct.ovl_fs** %17, align 8
  store %struct.ovl_fs* %18, %struct.ovl_fs** %7, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @OVL_I(%struct.inode* %20)
  %22 = call i64 @ovl_upperdentry_dereference(i32 %21)
  store i64 %22, i64* %19, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %24 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %25 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %13
  %31 = call i32 @touch_atime(%struct.path* %8)
  %32 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.TYPE_4__* @d_inode(i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %13
  br label %40

40:                                               ; preds = %39, %3
  ret i32 0
}

declare dso_local i64 @ovl_upperdentry_dereference(i32) #1

declare dso_local i32 @OVL_I(%struct.inode*) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

declare dso_local %struct.TYPE_4__* @d_inode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
