; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_write_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_write_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i8*, i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_attr3_rmt_hdr = type { i64 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@NULLCOMMITLSN = common dso_local global i32 0, align 4
@__this_address = common dso_local global i64 0, align 8
@XFS_ATTR3_RMT_CRC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_attr3_rmt_write_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_attr3_rmt_write_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_attr3_rmt_hdr*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 3
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %3, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = call i32 @xfs_sb_version_hascrc(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %99

23:                                               ; preds = %1
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %25 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BBTOB(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  br label %39

39:                                               ; preds = %72, %23
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to %struct.xfs_attr3_rmt_hdr*
  store %struct.xfs_attr3_rmt_hdr* %44, %struct.xfs_attr3_rmt_hdr** %9, align 8
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @xfs_attr3_rmt_verify(%struct.xfs_mount* %45, %struct.xfs_buf* %46, i8* %47, i32 %48, i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %55 = load i32, i32* @EFSCORRUPTED, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @xfs_verifier_error(%struct.xfs_buf* %54, i32 %56, i64 %57)
  br label %99

59:                                               ; preds = %42
  %60 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @NULLCOMMITLSN, align 4
  %64 = call i64 @cpu_to_be64(i32 %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %68 = load i32, i32* @EFSCORRUPTED, align 4
  %69 = sub nsw i32 0, %68
  %70 = load i64, i64* @__this_address, align 8
  %71 = call i32 @xfs_verifier_error(%struct.xfs_buf* %67, i32 %69, i64 %70)
  br label %99

72:                                               ; preds = %59
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @XFS_ATTR3_RMT_CRC_OFF, align 4
  %76 = call i32 @xfs_update_cksum(i8* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @BTOBB(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %39

90:                                               ; preds = %39
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %95 = load i32, i32* @EFSCORRUPTED, align 4
  %96 = sub nsw i32 0, %95
  %97 = load i64, i64* @__this_address, align 8
  %98 = call i32 @xfs_verifier_error(%struct.xfs_buf* %94, i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %22, %53, %66, %93, %90
  ret void
}

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_attr3_rmt_verify(%struct.xfs_mount*, %struct.xfs_buf*, i8*, i32, i32) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i64) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_update_cksum(i8*, i32, i32) #1

declare dso_local i64 @BTOBB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
