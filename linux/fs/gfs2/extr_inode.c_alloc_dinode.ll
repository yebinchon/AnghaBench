; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_alloc_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_alloc_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@RES_RG_BIT = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i32*)* @alloc_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dinode(%struct.gfs2_inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_alloc_parms, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 2
  %12 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_2__* %11)
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %7, align 8
  %13 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %8, i32 0, i32 0
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %8, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %19 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %18, %struct.gfs2_alloc_parms* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %76

23:                                               ; preds = %3
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %25 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %24, %struct.gfs2_alloc_parms* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %73

29:                                               ; preds = %23
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RES_RG_BIT, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @RES_STATFS, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @RES_QUOTA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %30, i64 %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %70

44:                                               ; preds = %29
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 0
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 3
  %51 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %45, i32* %47, i32* %48, i32 1, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %69 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %68)
  br label %70

70:                                               ; preds = %44, %43
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %72 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %71)
  br label %73

73:                                               ; preds = %70, %28
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %75 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %74)
  br label %76

76:                                               ; preds = %73, %22
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
