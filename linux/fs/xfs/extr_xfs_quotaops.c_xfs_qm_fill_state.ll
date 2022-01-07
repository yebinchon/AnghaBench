; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_qm_fill_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_qm_fill_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NULLFSINO = common dso_local global i64 0, align 8
@QCI_SYSFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qc_type_state*, %struct.xfs_mount*, %struct.xfs_inode*, i64)* @xfs_qm_fill_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_qm_fill_state(%struct.qc_type_state* %0, %struct.xfs_mount* %1, %struct.xfs_inode* %2, i64 %3) #0 {
  %5 = alloca %struct.qc_type_state*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_quotainfo*, align 8
  %10 = alloca i32, align 4
  store %struct.qc_type_state* %0, %struct.qc_type_state** %5, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %6, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  store %struct.xfs_quotainfo* %13, %struct.xfs_quotainfo** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %16 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %15, i32 0, i32 9
  store i64 %14, i64* %16, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %18 = icmp ne %struct.xfs_inode* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @NULLFSINO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %87

24:                                               ; preds = %19, %4
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %26 = icmp ne %struct.xfs_inode* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @xfs_iget(%struct.xfs_mount* %28, i32* null, i64 %29, i32 0, i32 0, %struct.xfs_inode** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %87

33:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* @QCI_SYSFILE, align 4
  %36 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %37 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %45 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %51 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %53 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %56 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %58 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %61 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %63 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %66 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %68 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %71 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %73 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %76 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %9, align 8
  %78 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qc_type_state*, %struct.qc_type_state** %5, align 8
  %81 = getelementptr inbounds %struct.qc_type_state, %struct.qc_type_state* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %34
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %86 = call i32 @xfs_irele(%struct.xfs_inode* %85)
  br label %87

87:                                               ; preds = %23, %32, %84, %34
  ret void
}

declare dso_local i64 @xfs_iget(%struct.xfs_mount*, i32*, i64, i32, i32, %struct.xfs_inode**) #1

declare dso_local i32 @xfs_irele(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
