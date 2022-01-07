; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_committed_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_committed_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32, i32 }
%struct.xfs_log_vec = type { %struct.xfs_log_item*, %struct.xfs_log_vec* }
%struct.xfs_log_item = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*)* }
%struct.xfs_ail_cursor = type { i32 }

@XFS_LI_ABORTED = common dso_local global i32 0, align 4
@XFS_ITEM_RELEASE_WHEN_COMMITTED = common dso_local global i32 0, align 4
@LOG_ITEM_BATCH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_committed_bulk(%struct.xfs_ail* %0, %struct.xfs_log_vec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_ail*, align 8
  %6 = alloca %struct.xfs_log_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x %struct.xfs_log_item*], align 16
  %10 = alloca %struct.xfs_log_vec*, align 8
  %11 = alloca %struct.xfs_ail_cursor, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_log_item*, align 8
  %14 = alloca i32, align 4
  store %struct.xfs_ail* %0, %struct.xfs_ail** %5, align 8
  store %struct.xfs_log_vec* %1, %struct.xfs_log_vec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @xfs_trans_ail_cursor_last(%struct.xfs_ail* %18, %struct.xfs_ail_cursor* %11, i32 %19)
  %21 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %6, align 8
  store %struct.xfs_log_vec* %24, %struct.xfs_log_vec** %10, align 8
  br label %25

25:                                               ; preds = %158, %4
  %26 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %10, align 8
  %27 = icmp ne %struct.xfs_log_vec* %26, null
  br i1 %27, label %28, label %162

28:                                               ; preds = %25
  %29 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %10, align 8
  %30 = getelementptr inbounds %struct.xfs_log_vec, %struct.xfs_log_vec* %29, i32 0, i32 0
  %31 = load %struct.xfs_log_item*, %struct.xfs_log_item** %30, align 8
  store %struct.xfs_log_item* %31, %struct.xfs_log_item** %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @XFS_LI_ABORTED, align 4
  %36 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %37 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %36, i32 0, i32 2
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %41 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @XFS_ITEM_RELEASE_WHEN_COMMITTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %50 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32 (%struct.xfs_log_item*)*, i32 (%struct.xfs_log_item*)** %52, align 8
  %54 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %55 = call i32 %53(%struct.xfs_log_item* %54)
  br label %158

56:                                               ; preds = %39
  %57 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %58 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.xfs_log_item*, i32)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %65 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %67, align 8
  %69 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 %68(%struct.xfs_log_item* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %63
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @XFS_LSN_CMP(i32 %75, i32 -1)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %158

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %84 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @XFS_FORCED_SHUTDOWN(i32 %85)
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %89 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %91, align 8
  %93 = icmp ne i32 (%struct.xfs_log_item*, i32)* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %82
  %95 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %96 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %98, align 8
  %100 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %101 = call i32 %99(%struct.xfs_log_item* %100, i32 1)
  br label %102

102:                                              ; preds = %94, %82
  br label %158

103:                                              ; preds = %79
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %103
  %108 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %109 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %113 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @XFS_LSN_CMP(i32 %111, i32 %114)
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %119 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @xfs_trans_ail_update(%struct.xfs_ail* %118, %struct.xfs_log_item* %119, i32 %120)
  br label %126

122:                                              ; preds = %107
  %123 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %124 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %128 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %130, align 8
  %132 = icmp ne i32 (%struct.xfs_log_item*, i32)* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %135 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32 (%struct.xfs_log_item*, i32)*, i32 (%struct.xfs_log_item*, i32)** %137, align 8
  %139 = load %struct.xfs_log_item*, %struct.xfs_log_item** %13, align 8
  %140 = call i32 %138(%struct.xfs_log_item* %139, i32 0)
  br label %141

141:                                              ; preds = %133, %126
  br label %158

142:                                              ; preds = %103
  %143 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %10, align 8
  %144 = getelementptr inbounds %struct.xfs_log_vec, %struct.xfs_log_vec* %143, i32 0, i32 0
  %145 = load %struct.xfs_log_item*, %struct.xfs_log_item** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [32 x %struct.xfs_log_item*], [32 x %struct.xfs_log_item*]* %9, i64 0, i64 %148
  store %struct.xfs_log_item* %145, %struct.xfs_log_item** %149, align 8
  %150 = load i32, i32* %12, align 4
  %151 = icmp sge i32 %150, 32
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %154 = getelementptr inbounds [32 x %struct.xfs_log_item*], [32 x %struct.xfs_log_item*]* %9, i64 0, i64 0
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @xfs_log_item_batch_insert(%struct.xfs_ail* %153, %struct.xfs_ail_cursor* %11, %struct.xfs_log_item** %154, i32 32, i32 %155)
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %152, %142
  br label %158

158:                                              ; preds = %157, %141, %102, %78, %48
  %159 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %10, align 8
  %160 = getelementptr inbounds %struct.xfs_log_vec, %struct.xfs_log_vec* %159, i32 0, i32 1
  %161 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %160, align 8
  store %struct.xfs_log_vec* %161, %struct.xfs_log_vec** %10, align 8
  br label %25

162:                                              ; preds = %25
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %167 = getelementptr inbounds [32 x %struct.xfs_log_item*], [32 x %struct.xfs_log_item*]* %9, i64 0, i64 0
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @xfs_log_item_batch_insert(%struct.xfs_ail* %166, %struct.xfs_ail_cursor* %11, %struct.xfs_log_item** %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %162
  %172 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %173 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %172, i32 0, i32 0
  %174 = call i32 @spin_lock(i32* %173)
  %175 = call i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail_cursor* %11)
  %176 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %177 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %176, i32 0, i32 0
  %178 = call i32 @spin_unlock(i32* %177)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_trans_ail_cursor_last(%struct.xfs_ail*, %struct.xfs_ail_cursor*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @XFS_LSN_CMP(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_trans_ail_update(%struct.xfs_ail*, %struct.xfs_log_item*, i32) #1

declare dso_local i32 @xfs_log_item_batch_insert(%struct.xfs_ail*, %struct.xfs_ail_cursor*, %struct.xfs_log_item**, i32, i32) #1

declare dso_local i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
