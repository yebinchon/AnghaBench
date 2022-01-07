; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_validate_cowextsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_validate_cowextsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@XFS_DIFLAG_REALTIME = common dso_local global i32 0, align 4
@XFS_DIFLAG2_COWEXTSIZE = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@MAXEXTLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_inode_validate_cowextsize(%struct.xfs_mount* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @XFS_DIFLAG_REALTIME, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @XFS_DIFLAG2_COWEXTSIZE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @XFS_FSB_TO_B(%struct.xfs_mount* %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = call i32 @xfs_sb_version_hasreflink(%struct.TYPE_2__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** @__this_address, align 8
  store i32* %32, i32** %6, align 8
  br label %101

33:                                               ; preds = %26, %5
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @S_ISDIR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** @__this_address, align 8
  store i32* %45, i32** %6, align 8
  br label %101

46:                                               ; preds = %40, %36, %33
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32*, i32** @__this_address, align 8
  store i32* %53, i32** %6, align 8
  br label %101

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** @__this_address, align 8
  store i32* %64, i32** %6, align 8
  br label %101

65:                                               ; preds = %60, %57, %54
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32*, i32** @__this_address, align 8
  store i32* %72, i32** %6, align 8
  br label %101

73:                                               ; preds = %68, %65
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %76 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = srem i64 %74, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32*, i32** @__this_address, align 8
  store i32* %82, i32** %6, align 8
  br label %101

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @MAXEXTLEN, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32*, i32** @__this_address, align 8
  store i32* %88, i32** %6, align 8
  br label %101

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %92 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %90, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32*, i32** @__this_address, align 8
  store i32* %99, i32** %6, align 8
  br label %101

100:                                              ; preds = %89
  store i32* null, i32** %6, align 8
  br label %101

101:                                              ; preds = %100, %98, %87, %81, %71, %63, %52, %44, %31
  %102 = load i32*, i32** %6, align 8
  ret i32* %102
}

declare dso_local i64 @XFS_FSB_TO_B(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_sb_version_hasreflink(%struct.TYPE_2__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
