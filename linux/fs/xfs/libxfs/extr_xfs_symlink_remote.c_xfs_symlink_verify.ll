; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, %struct.xfs_dsymlink_hdr*, %struct.xfs_mount* }
%struct.xfs_dsymlink_hdr = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_SYMLINK_MAXLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_buf*)* @xfs_symlink_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_symlink_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_dsymlink_hdr*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 2
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  store %struct.xfs_mount* %8, %struct.xfs_mount** %4, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 1
  %11 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %10, align 8
  store %struct.xfs_dsymlink_hdr* %11, %struct.xfs_dsymlink_hdr** %5, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_2__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** @__this_address, align 8
  store i32* %17, i32** %2, align 8
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %20 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xfs_verify_magic(%struct.xfs_buf* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** @__this_address, align 8
  store i32* %26, i32** %2, align 8
  br label %80

27:                                               ; preds = %18
  %28 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %28, i32 0, i32 5
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @uuid_equal(i32* %29, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32*, i32** @__this_address, align 8
  store i32* %36, i32** %2, align 8
  br label %80

37:                                               ; preds = %27
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be64_to_cpu(i32 %43)
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32*, i32** @__this_address, align 8
  store i32* %47, i32** %2, align 8
  br label %80

48:                                               ; preds = %37
  %49 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @be32_to_cpu(i32 %51)
  %53 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be32_to_cpu(i32 %55)
  %57 = add nsw i64 %52, %56
  %58 = load i64, i64* @XFS_SYMLINK_MAXLEN, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32*, i32** @__this_address, align 8
  store i32* %61, i32** %2, align 8
  br label %80

62:                                               ; preds = %48
  %63 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** @__this_address, align 8
  store i32* %68, i32** %2, align 8
  br label %80

69:                                               ; preds = %62
  %70 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %71 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %5, align 8
  %72 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @be64_to_cpu(i32 %73)
  %75 = call i32 @xfs_log_check_lsn(%struct.xfs_mount* %70, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = load i32*, i32** @__this_address, align 8
  store i32* %78, i32** %2, align 8
  br label %80

79:                                               ; preds = %69
  store i32* null, i32** %2, align 8
  br label %80

80:                                               ; preds = %79, %77, %67, %60, %46, %35, %25, %16
  %81 = load i32*, i32** %2, align 8
  ret i32* %81
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_verify_magic(%struct.xfs_buf*, i32) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_log_check_lsn(%struct.xfs_mount*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
