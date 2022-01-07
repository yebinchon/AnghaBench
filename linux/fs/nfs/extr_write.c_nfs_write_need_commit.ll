; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_need_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_need_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@NFS_DATA_SYNC = common dso_local global i64 0, align 8
@NFS_FILE_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_write_need_commit(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %3, align 8
  %4 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %5 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFS_DATA_SYNC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFS_FILE_SYNC, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
