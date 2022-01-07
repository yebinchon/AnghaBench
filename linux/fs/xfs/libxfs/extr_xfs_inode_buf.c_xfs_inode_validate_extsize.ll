; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_validate_extsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_validate_extsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@XFS_DIFLAG_REALTIME = common dso_local global i32 0, align 4
@XFS_DIFLAG_EXTSIZE = common dso_local global i32 0, align 4
@XFS_DIFLAG_EXTSZINHERIT = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@MAXEXTLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_inode_validate_extsize(%struct.xfs_mount* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @XFS_DIFLAG_REALTIME, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @XFS_DIFLAG_EXTSIZE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @XFS_DIFLAG_EXTSZINHERIT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @XFS_FSB_TO_B(%struct.xfs_mount* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %33, %37
  store i32 %38, i32* %14, align 4
  br label %44

39:                                               ; preds = %4
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @S_ISDIR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @S_ISREG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** @__this_address, align 8
  store i32* %59, i32** %5, align 8
  br label %130

60:                                               ; preds = %54, %50, %47
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @S_ISREG(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** @__this_address, align 8
  store i32* %68, i32** %5, align 8
  br label %130

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @S_ISDIR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** @__this_address, align 8
  store i32* %77, i32** %5, align 8
  br label %130

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32*, i32** @__this_address, align 8
  store i32* %88, i32** %5, align 8
  br label %130

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32*, i32** @__this_address, align 8
  store i32* %102, i32** %5, align 8
  br label %130

103:                                              ; preds = %98, %95, %92, %89
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = srem i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32*, i32** @__this_address, align 8
  store i32* %109, i32** %5, align 8
  br label %130

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @MAXEXTLEN, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32*, i32** @__this_address, align 8
  store i32* %115, i32** %5, align 8
  br label %130

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %122 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 2
  %126 = icmp sgt i32 %120, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32*, i32** @__this_address, align 8
  store i32* %128, i32** %5, align 8
  br label %130

129:                                              ; preds = %119, %116
  store i32* null, i32** %5, align 8
  br label %130

130:                                              ; preds = %129, %127, %114, %108, %101, %87, %76, %67, %58
  %131 = load i32*, i32** %5, align 8
  ret i32* %131
}

declare dso_local i32 @XFS_FSB_TO_B(%struct.xfs_mount*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
