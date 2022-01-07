; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_extents_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_swap_extents_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, %struct.xfs_inode*)* @xfs_swap_extents_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_swap_extents_check_format(%struct.xfs_inode* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %167

22:                                               ; preds = %12
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %167

35:                                               ; preds = %22
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i64 @xfs_sb_version_hasrmapbt(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %167

43:                                               ; preds = %35
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %167

60:                                               ; preds = %50, %43
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %69 = load i32, i32* @XFS_DATA_FORK, align 4
  %70 = call i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode* %68, i32 %69)
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %72 = load i32, i32* @XFS_DATA_FORK, align 4
  %73 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %71, i32 %72)
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %167

78:                                               ; preds = %67, %60
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %80 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %87 = load i32, i32* @XFS_DATA_FORK, align 4
  %88 = call i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode* %86, i32 %87)
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %90 = load i32, i32* @XFS_DATA_FORK, align 4
  %91 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %89, i32 %90)
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %167

96:                                               ; preds = %85, %78
  %97 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %98 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %96
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %105 = call i64 @XFS_IFORK_Q(%struct.xfs_inode* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %109 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @XFS_BMAP_BMDR_SPACE(i32 %111)
  %113 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %114 = call i64 @XFS_IFORK_BOFF(%struct.xfs_inode* %113)
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %167

119:                                              ; preds = %107, %103
  %120 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %121 = load i32, i32* @XFS_DATA_FORK, align 4
  %122 = call i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode* %120, i32 %121)
  %123 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %124 = load i32, i32* @XFS_DATA_FORK, align 4
  %125 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %123, i32 %124)
  %126 = icmp sle i64 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %167

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %96
  %132 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %133 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %131
  %139 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %140 = call i64 @XFS_IFORK_Q(%struct.xfs_inode* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %144 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @XFS_BMAP_BMDR_SPACE(i32 %146)
  %148 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %149 = call i64 @XFS_IFORK_BOFF(%struct.xfs_inode* %148)
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %167

154:                                              ; preds = %142, %138
  %155 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %156 = load i32, i32* @XFS_DATA_FORK, align 4
  %157 = call i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode* %155, i32 %156)
  %158 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %159 = load i32, i32* @XFS_DATA_FORK, align 4
  %160 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %158, i32 %159)
  %161 = icmp sle i64 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %167

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %131
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %162, %151, %127, %116, %93, %75, %57, %42, %32, %19
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local i64 @XFS_IFORK_NEXTENTS(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_BMAP_BMDR_SPACE(i32) #1

declare dso_local i64 @XFS_IFORK_BOFF(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
