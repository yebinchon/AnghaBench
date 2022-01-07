; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.ext4_iloc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@current = common dso_local global %struct.TYPE_11__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"called recursively, non-PF_MEMALLOC!\0A\00", align 1
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"IO error syncing inode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_iloc, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PF_MEMALLOC, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @sb_rdonly(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %120

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_10__* @EXT4_SB(i32 %25)
  %27 = call i32 @ext4_forced_shutdown(%struct.TYPE_10__* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %120

33:                                               ; preds = %22
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_10__* @EXT4_SB(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %33
  %42 = call i64 (...) @ext4_journal_current_handle()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = call i32 @jbd_debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @dump_stack()
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %41
  %50 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %51 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WB_SYNC_ALL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %57 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %120

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_10__* @EXT4_SB(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.TYPE_12__* @EXT4_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @jbd2_complete_transaction(i64 %67, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %118

73:                                               ; preds = %33
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @__ext4_get_inode_loc(%struct.inode* %74, %struct.ext4_iloc* %7, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %120

80:                                               ; preds = %73
  %81 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %82 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WB_SYNC_ALL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %88 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i32 @sync_dirty_buffer(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %91, %86, %80
  %96 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i64 @buffer_req(%struct.TYPE_9__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call i32 @buffer_uptodate(%struct.TYPE_9__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode* %106, i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %105, %100, %95
  %115 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %7, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i32 @brelse(%struct.TYPE_9__* %116)
  br label %118

118:                                              ; preds = %114, %61
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %78, %60, %44, %30, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @EXT4_SB(i32) #1

declare dso_local i64 @ext4_journal_current_handle(...) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @jbd2_complete_transaction(i64, i32) #1

declare dso_local %struct.TYPE_12__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @__ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*, i32) #1

declare dso_local i32 @sync_dirty_buffer(%struct.TYPE_9__*) #1

declare dso_local i64 @buffer_req(%struct.TYPE_9__*) #1

declare dso_local i32 @buffer_uptodate(%struct.TYPE_9__*) #1

declare dso_local i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode*, i32, i8*) #1

declare dso_local i32 @brelse(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
