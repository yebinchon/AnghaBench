; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_binval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_binval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@XFS_BLI_STALE = common dso_local global i32 0, align 4
@XBF_STALE = common dso_local global i32 0, align 4
@XFS_BLI_LOGGED = common dso_local global i32 0, align 4
@XFS_BLI_DIRTY = common dso_local global i32 0, align 4
@XFS_BLF_INODE_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_MASK = common dso_local global i32 0, align 4
@XFS_BLF_CANCEL = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_BLI_INODE_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_binval(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %9 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %8, align 8
  store %struct.xfs_buf_log_item* %9, %struct.xfs_buf_log_item** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = icmp eq %struct.TYPE_12__* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %18 = icmp ne %struct.xfs_buf_log_item* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %21, i32 0, i32 5
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %28 = call i32 @trace_xfs_trans_binval(%struct.xfs_buf_log_item* %27)
  %29 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @XFS_BLI_STALE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XBF_STALE, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @XFS_BLI_LOGGED, align 4
  %46 = load i32, i32* @XFS_BLI_DIRTY, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @XFS_BLF_INODE_BUF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %64 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XFS_BLFT_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %74 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @XFS_BLF_CANCEL, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i32, i32* @XFS_LI_DIRTY, align 4
  %81 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %82 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = call i32 @test_bit(i32 %80, i32* %83)
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @ASSERT(i32 %90)
  br label %171

92:                                               ; preds = %2
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = call i32 @xfs_buf_stale(%struct.TYPE_13__* %93)
  %95 = load i32, i32* @XFS_BLI_STALE, align 4
  %96 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %97 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @XFS_BLI_INODE_BUF, align 4
  %101 = load i32, i32* @XFS_BLI_LOGGED, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @XFS_BLI_DIRTY, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %107 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @XFS_BLF_INODE_BUF, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %113 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @XFS_BLF_CANCEL, align 4
  %118 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %119 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @XFS_BLFT_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %126 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %124
  store i32 %129, i32* %127, align 8
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %157, %92
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %133 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %130
  %137 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %138 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %146 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %145, i32 0, i32 3
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memset(i32 %144, i32 0, i32 %155)
  br label %157

157:                                              ; preds = %136
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %130

160:                                              ; preds = %130
  %161 = load i32, i32* @XFS_LI_DIRTY, align 4
  %162 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %163 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = call i32 @set_bit(i32 %161, i32* %164)
  %166 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %160, %35
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_xfs_trans_binval(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @xfs_buf_stale(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
