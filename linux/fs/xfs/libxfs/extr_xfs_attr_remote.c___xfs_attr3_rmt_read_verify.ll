; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c___xfs_attr3_rmt_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c___xfs_attr3_rmt_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i8*, i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XFS_ATTR3_RMT_CRC_OFF = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*, i32, i32*)* @__xfs_attr3_rmt_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_attr3_rmt_read_verify(%struct.xfs_buf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 3
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %8, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 0
  %23 = call i32 @xfs_sb_version_hascrc(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BBTOB(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  br label %42

42:                                               ; preds = %73, %26
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @XFS_ATTR3_RMT_CRC_OFF, align 4
  %52 = call i32 @xfs_verify_cksum(i8* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @__this_address, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @EFSBADCRC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %48, %45
  %60 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %61 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @xfs_attr3_rmt_verify(%struct.xfs_mount* %60, %struct.xfs_buf* %61, i8* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EFSCORRUPTED, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %96

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @BTOBB(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  br label %42

87:                                               ; preds = %42
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* @__this_address, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @EFSCORRUPTED, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %90, %70, %54, %25
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_verify_cksum(i8*, i32, i32) #1

declare dso_local i32 @xfs_attr3_rmt_verify(%struct.xfs_mount*, %struct.xfs_buf*, i8*, i32, i32) #1

declare dso_local i64 @BTOBB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
