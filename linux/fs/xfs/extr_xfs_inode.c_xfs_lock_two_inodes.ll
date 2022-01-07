; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_lock_two_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_lock_two_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xfs_log_item }
%struct.xfs_log_item = type { i32 }

@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_LI_IN_AIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_lock_two_inodes(%struct.xfs_inode* %0, i32 %1, %struct.xfs_inode* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xfs_inode* %2, %struct.xfs_inode** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @hweight32(i32 %13)
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @hweight32(i32 %18)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %25 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %34 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %43 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %50 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %47, %4
  %56 = phi i1 [ true, %4 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %61 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %68 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %65, %55
  %74 = phi i1 [ true, %55 ], [ %72, %65 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %79 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %86 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %83, %73
  %92 = phi i1 [ true, %73 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %97 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %104 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %101, %91
  %110 = phi i1 [ true, %91 ], [ %108, %101 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %114 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %117 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %123 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %126 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %109
  %130 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  store %struct.xfs_inode* %130, %struct.xfs_inode** %9, align 8
  %131 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  store %struct.xfs_inode* %131, %struct.xfs_inode** %5, align 8
  %132 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  store %struct.xfs_inode* %132, %struct.xfs_inode** %7, align 8
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %129, %109
  br label %137

137:                                              ; preds = %170, %136
  %138 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @xfs_lock_inumorder(i32 %139, i32 0)
  %141 = call i32 @xfs_ilock(%struct.xfs_inode* %138, i32 %140)
  %142 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %143 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store %struct.xfs_log_item* %145, %struct.xfs_log_item** %12, align 8
  %146 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %147 = icmp ne %struct.xfs_log_item* %146, null
  br i1 %147, label %148, label %172

148:                                              ; preds = %137
  %149 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %150 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %151 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %150, i32 0, i32 0
  %152 = call i64 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %148
  %155 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @xfs_lock_inumorder(i32 %156, i32 1)
  %158 = call i32 @xfs_ilock_nowait(%struct.xfs_inode* %155, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  %161 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @xfs_iunlock(%struct.xfs_inode* %161, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  %166 = srem i32 %165, 5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = call i32 @delay(i32 1)
  br label %170

170:                                              ; preds = %168, %160
  br label %137

171:                                              ; preds = %154
  br label %177

172:                                              ; preds = %148, %137
  %173 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @xfs_lock_inumorder(i32 %174, i32 1)
  %176 = call i32 @xfs_ilock(%struct.xfs_inode* %173, i32 %175)
  br label %177

177:                                              ; preds = %172, %171
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_lock_inumorder(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @xfs_ilock_nowait(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
