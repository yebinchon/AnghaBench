; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_attr3_rmt_hdr = type { i64, i32, i32, i32, i32, i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_XATTR_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_mount*, %struct.xfs_buf*, i8*, i32, i64)* @xfs_attr3_rmt_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_attr3_rmt_verify(%struct.xfs_mount* %0, %struct.xfs_buf* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_attr3_rmt_hdr*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.xfs_attr3_rmt_hdr*
  store %struct.xfs_attr3_rmt_hdr* %14, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** @__this_address, align 8
  store i32* %20, i32** %6, align 8
  br label %83

21:                                               ; preds = %5
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %23 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %24 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @xfs_verify_magic(%struct.xfs_buf* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** @__this_address, align 8
  store i32* %29, i32** %6, align 8
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %32 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %31, i32 0, i32 4
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @uuid_equal(i32* %32, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load i32*, i32** @__this_address, align 8
  store i32* %39, i32** %6, align 8
  br label %83

40:                                               ; preds = %30
  %41 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %42 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @be64_to_cpu(i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32*, i32** @__this_address, align 8
  store i32* %48, i32** %6, align 8
  br label %83

49:                                               ; preds = %40
  %50 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %51 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 32
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32*, i32** @__this_address, align 8
  store i32* %60, i32** %6, align 8
  br label %83

61:                                               ; preds = %49
  %62 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %63 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %67 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = add nsw i32 %65, %69
  %71 = load i32, i32* @XFS_XATTR_SIZE_MAX, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32*, i32** @__this_address, align 8
  store i32* %74, i32** %6, align 8
  br label %83

75:                                               ; preds = %61
  %76 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %77 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32*, i32** @__this_address, align 8
  store i32* %81, i32** %6, align 8
  br label %83

82:                                               ; preds = %75
  store i32* null, i32** %6, align 8
  br label %83

83:                                               ; preds = %82, %80, %73, %59, %47, %38, %28, %19
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_verify_magic(%struct.xfs_buf*, i32) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
