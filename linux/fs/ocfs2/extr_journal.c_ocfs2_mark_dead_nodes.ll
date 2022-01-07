; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_mark_dead_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_mark_dead_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_mark_dead_nodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %108, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %9
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ocfs2_read_journal_inode(%struct.ocfs2_super* %16, i32 %17, %struct.buffer_head** %7, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %112

24:                                               ; preds = %15
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %8, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %30 = call i32 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @trace_ocfs2_mark_dead_nodes(i32 %43, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %24
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  br label %108

61:                                               ; preds = %24
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ocfs2_slot_to_node_num_locked(%struct.ocfs2_super* %62, i32 %63, i32* %3)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %71 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock(i32* %71)
  br label %108

73:                                               ; preds = %61
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @__ocfs2_recovery_map_test(%struct.ocfs2_super* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %80 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  br label %108

82:                                               ; preds = %73
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %84 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ocfs2_trylock_journal(%struct.ocfs2_super* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @ocfs2_recovery_thread(%struct.ocfs2_super* %92, i32 %93)
  br label %107

95:                                               ; preds = %82
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %112

106:                                              ; preds = %98, %95
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %78, %69, %57
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %9

111:                                              ; preds = %9
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %103, %21
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @ocfs2_read_journal_inode(%struct.ocfs2_super*, i32, %struct.buffer_head**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_recovery_generation(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_ocfs2_mark_dead_nodes(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_slot_to_node_num_locked(%struct.ocfs2_super*, i32, i32*) #1

declare dso_local i64 @__ocfs2_recovery_map_test(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_trylock_journal(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_recovery_thread(%struct.ocfs2_super*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
