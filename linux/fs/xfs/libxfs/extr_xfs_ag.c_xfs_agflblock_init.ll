; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agflblock_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_agflblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.aghdr_init_data = type { i32 }
%struct.xfs_agfl = type { i32, i8*, i8* }

@XFS_AGFL_MAGIC = common dso_local global i32 0, align 4
@NULLAGBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* @xfs_agflblock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agflblock_init(%struct.xfs_mount* %0, %struct.xfs_buf* %1, %struct.aghdr_init_data* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca %struct.aghdr_init_data*, align 8
  %7 = alloca %struct.xfs_agfl*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  store %struct.aghdr_init_data* %2, %struct.aghdr_init_data** %6, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %11 = call %struct.xfs_agfl* @XFS_BUF_TO_AGFL(%struct.xfs_buf* %10)
  store %struct.xfs_agfl* %11, %struct.xfs_agfl** %7, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load i32, i32* @XFS_AGFL_MAGIC, align 4
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.xfs_agfl*, %struct.xfs_agfl** %7, align 8
  %20 = getelementptr inbounds %struct.xfs_agfl, %struct.xfs_agfl* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %6, align 8
  %22 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.xfs_agfl*, %struct.xfs_agfl** %7, align 8
  %26 = getelementptr inbounds %struct.xfs_agfl, %struct.xfs_agfl* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.xfs_agfl*, %struct.xfs_agfl** %7, align 8
  %28 = getelementptr inbounds %struct.xfs_agfl, %struct.xfs_agfl* %27, i32 0, i32 0
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @uuid_copy(i32* %28, i32* %31)
  br label %33

33:                                               ; preds = %16, %3
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %36 = call i8** @XFS_BUF_TO_AGFL_BNO(%struct.xfs_mount* %34, %struct.xfs_buf* %35)
  store i8** %36, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %49, %33
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %40 = call i32 @xfs_agfl_size(%struct.xfs_mount* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* @NULLAGBLOCK, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load i8**, i8*** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %44, i8** %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %37

52:                                               ; preds = %37
  ret void
}

declare dso_local %struct.xfs_agfl* @XFS_BUF_TO_AGFL(%struct.xfs_buf*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i8** @XFS_BUF_TO_AGFL_BNO(%struct.xfs_mount*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_agfl_size(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
