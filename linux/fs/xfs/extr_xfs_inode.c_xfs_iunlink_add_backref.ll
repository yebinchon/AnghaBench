; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunlink_add_backref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunlink_add_backref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_perag = type { i32 }
%struct.xfs_iunlink = type { i8*, i8* }

@XFS_ERRTAG_IUNLINK_FALLBACK = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_perag*, i8*, i8*)* @xfs_iunlink_add_backref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_iunlink_add_backref(%struct.xfs_perag* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_perag*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xfs_iunlink*, align 8
  store %struct.xfs_perag* %0, %struct.xfs_perag** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XFS_ERRTAG_IUNLINK_FALLBACK, align 4
  %13 = call i64 @XFS_TEST_ERROR(i32 0, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load i32, i32* @KM_NOFS, align 4
  %18 = call %struct.xfs_iunlink* @kmem_zalloc(i32 16, i32 %17)
  store %struct.xfs_iunlink* %18, %struct.xfs_iunlink** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.xfs_iunlink*, %struct.xfs_iunlink** %8, align 8
  %21 = getelementptr inbounds %struct.xfs_iunlink, %struct.xfs_iunlink* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.xfs_iunlink*, %struct.xfs_iunlink** %8, align 8
  %24 = getelementptr inbounds %struct.xfs_iunlink, %struct.xfs_iunlink* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %26 = load %struct.xfs_iunlink*, %struct.xfs_iunlink** %8, align 8
  %27 = call i32 @xfs_iunlink_insert_backref(%struct.xfs_perag* %25, %struct.xfs_iunlink* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @XFS_TEST_ERROR(i32, i32, i32) #1

declare dso_local %struct.xfs_iunlink* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_iunlink_insert_backref(%struct.xfs_perag*, %struct.xfs_iunlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
