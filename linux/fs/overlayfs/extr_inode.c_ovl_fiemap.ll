; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.fiemap_extent_info = type { i32 }
%struct.cred = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@FIEMAP_FLAG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)* @ovl_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cred*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.inode* @ovl_inode_real(%struct.inode* %13)
  store %struct.inode* %14, %struct.inode** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %11, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)**
  %20 = load i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cred* @ovl_override_creds(i32 %28)
  store %struct.cred* %29, %struct.cred** %12, align 8
  %30 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %31 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @filemap_write_and_wait(i32 %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)**
  %47 = load i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i32, i32)** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %47(%struct.inode* %48, %struct.fiemap_extent_info* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.cred*, %struct.cred** %12, align 8
  %54 = call i32 @revert_creds(%struct.cred* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %41, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.inode* @ovl_inode_real(%struct.inode*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
