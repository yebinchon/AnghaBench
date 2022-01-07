; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_link_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_link_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_diradd = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i64 }

@RES_LEAF = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*, %struct.gfs2_diradd*)* @link_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_dinode(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, %struct.gfs2_diradd* %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_diradd*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.gfs2_alloc_parms, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %7, align 8
  store %struct.gfs2_diradd* %3, %struct.gfs2_diradd** %8, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %9, align 8
  %15 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %10, i32 0, i32 0
  %16 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %8, align 8
  %17 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %15, align 8
  %19 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %25 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %24, %struct.gfs2_alloc_parms* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %69

29:                                               ; preds = %23
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %30, %struct.gfs2_alloc_parms* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %69

35:                                               ; preds = %29
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %38 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %8, align 8
  %39 = call i64 @gfs2_trans_da_blks(%struct.gfs2_inode* %37, %struct.gfs2_diradd* %38, i32 2)
  %40 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %36, i64 %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %66

44:                                               ; preds = %35
  br label %57

45:                                               ; preds = %4
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %47 = load i64, i64* @RES_LEAF, align 8
  %48 = load i32, i32* @RES_DINODE, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %46, i64 %51, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %69

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 0
  %60 = load %struct.qstr*, %struct.qstr** %6, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %62 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %8, align 8
  %63 = call i32 @gfs2_dir_add(i32* %59, %struct.qstr* %60, %struct.gfs2_inode* %61, %struct.gfs2_diradd* %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %65 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %64)
  br label %66

66:                                               ; preds = %57, %43
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %68 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %67)
  br label %69

69:                                               ; preds = %66, %55, %34, %28
  %70 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %71 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @gfs2_trans_da_blks(%struct.gfs2_inode*, %struct.gfs2_diradd*, i32) #1

declare dso_local i32 @gfs2_dir_add(i32*, %struct.qstr*, %struct.gfs2_inode*, %struct.gfs2_diradd*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
