; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i64, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_sb = type { i32 }
%struct.xfs_dsb = type { i64, i64, i32 }

@XFS_SB_MAGIC = common dso_local global i32 0, align 4
@XFS_SB_VERSION_NUMBITS = common dso_local global i32 0, align 4
@XFS_SB_VERSION_5 = common dso_local global i32 0, align 4
@XFS_SB_CRC_OFF = common dso_local global i32 0, align 4
@XFS_SB_DADDR = common dso_local global i64 0, align 8
@EFSBADCRC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_sb_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_sb_read_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_sb, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_dsb*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 1
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %4, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %11 = call %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf* %10)
  store %struct.xfs_dsb* %11, %struct.xfs_dsb** %5, align 8
  %12 = load %struct.xfs_dsb*, %struct.xfs_dsb** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @XFS_SB_MAGIC, align 4
  %16 = call i64 @cpu_to_be32(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %1
  %19 = load %struct.xfs_dsb*, %struct.xfs_dsb** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be16_to_cpu(i32 %21)
  %23 = load i32, i32* @XFS_SB_VERSION_NUMBITS, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @XFS_SB_VERSION_5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.xfs_dsb*, %struct.xfs_dsb** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27, %18
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %34 = load i32, i32* @XFS_SB_CRC_OFF, align 4
  %35 = call i32 @xfs_buf_verify_cksum(%struct.xfs_buf* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %39 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XFS_SB_DADDR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %44, i32 0, i32 0
  %46 = call i64 @xfs_sb_version_hascrc(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %37
  %49 = load i32, i32* @EFSBADCRC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %27, %1
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %55 = call %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf* %54)
  %56 = call i32 @__xfs_sb_from_disk(%struct.xfs_sb* %3, %struct.xfs_dsb* %55, i32 0)
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %59 = call i32 @xfs_validate_sb_common(%struct.xfs_mount* %57, %struct.xfs_buf* %58, %struct.xfs_sb* %3)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %65 = call i32 @xfs_validate_sb_read(%struct.xfs_mount* %64, %struct.xfs_sb* %3)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %62, %48
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @EFSCORRUPTED, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @EFSBADCRC, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %66
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @__this_address, align 4
  %80 = call i32 @xfs_verifier_error(%struct.xfs_buf* %77, i32 %78, i32 %79)
  br label %89

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @xfs_buf_ioerror(%struct.xfs_buf* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %76
  ret void
}

declare dso_local %struct.xfs_dsb* @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_buf_verify_cksum(%struct.xfs_buf*, i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @__xfs_sb_from_disk(%struct.xfs_sb*, %struct.xfs_dsb*, i32) #1

declare dso_local i32 @xfs_validate_sb_common(%struct.xfs_mount*, %struct.xfs_buf*, %struct.xfs_sb*) #1

declare dso_local i32 @xfs_validate_sb_read(%struct.xfs_mount*, %struct.xfs_sb*) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_buf_ioerror(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
