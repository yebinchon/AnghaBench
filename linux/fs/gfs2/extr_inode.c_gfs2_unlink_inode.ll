; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64 }
%struct.dentry = type { i32 }
%struct.inode = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.dentry*)* @gfs2_unlink_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unlink_inode(%struct.gfs2_inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %7, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @gfs2_dir_del(%struct.gfs2_inode* %13, %struct.dentry* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @current_time(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @clear_nlink(%struct.inode* %33)
  br label %38

35:                                               ; preds = %20
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i32 @drop_nlink(%struct.inode* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @mark_inode_dirty(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @gfs2_unlink_di(%struct.inode* %46)
  br label %48

48:                                               ; preds = %45, %38
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_dir_del(%struct.gfs2_inode*, %struct.dentry*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_unlink_di(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
