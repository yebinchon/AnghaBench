; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_extent.c_extBalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_extent.c_extBalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.jfs_inode_info = type { i64, i32, i32 }
%struct.jfs_sb_info = type { i32, %struct.bmap* }
%struct.bmap = type { i32, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@FILESYSTEM_I = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, i32*)* @extBalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extBalloc(%struct.inode* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.jfs_inode_info*, align 8
  %11 = alloca %struct.jfs_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bmap*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %20)
  store %struct.jfs_inode_info* %21, %struct.jfs_inode_info** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.jfs_sb_info* @JFS_SBI(i32 %24)
  store %struct.jfs_sb_info* %25, %struct.jfs_sb_info** %11, align 8
  %26 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %11, align 8
  %27 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %17, align 4
  %29 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %11, align 8
  %30 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %29, i32 0, i32 1
  %31 = load %struct.bmap*, %struct.bmap** %30, align 8
  store %struct.bmap* %31, %struct.bmap** %18, align 8
  %32 = load %struct.bmap*, %struct.bmap** %18, align 8
  %33 = getelementptr inbounds %struct.bmap, %struct.bmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %17, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %13, align 4
  store i32 %54, i32* %12, align 4
  br label %58

55:                                               ; preds = %40, %4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %53
  br label %59

59:                                               ; preds = %82, %58
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dbAlloc(%struct.inode* %60, i32 %61, i32 %62, i32* %14)
  store i32 %63, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %5, align 4
  br label %153

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @extRoundDown(i32 %74)
  %76 = call i32 @min(i32 %73, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %5, align 4
  br label %153

82:                                               ; preds = %72
  br label %59

83:                                               ; preds = %59
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISREG(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %152

93:                                               ; preds = %83
  %94 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %95 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FILESYSTEM_I, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %11, align 8
  %102 = call i32 @BLKTOAG(i32 %100, %struct.jfs_sb_info* %101)
  store i32 %102, i32* %19, align 4
  %103 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %104 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %103, i32 0, i32 2
  %105 = call i32 @spin_lock_irq(i32* %104)
  %106 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %107 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %121

110:                                              ; preds = %99
  %111 = load %struct.bmap*, %struct.bmap** %18, align 8
  %112 = getelementptr inbounds %struct.bmap, %struct.bmap* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @atomic_inc(i32* %116)
  %118 = load i32, i32* %19, align 4
  %119 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %120 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %148

121:                                              ; preds = %99
  %122 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %123 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %121
  %128 = load %struct.bmap*, %struct.bmap** %18, align 8
  %129 = getelementptr inbounds %struct.bmap, %struct.bmap* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %132 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = call i32 @atomic_dec(i32* %135)
  %137 = load %struct.bmap*, %struct.bmap** %18, align 8
  %138 = getelementptr inbounds %struct.bmap, %struct.bmap* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @atomic_inc(i32* %142)
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %146 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %127, %121
  br label %148

148:                                              ; preds = %147, %110
  %149 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %10, align 8
  %150 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock_irq(i32* %150)
  br label %152

152:                                              ; preds = %148, %93, %83
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %80, %70
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @extRoundDown(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @BLKTOAG(i32, %struct.jfs_sb_info*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
