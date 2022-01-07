; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recover_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recover_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ORPHAN_NEED_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32)* @ocfs2_recover_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_recover_node(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %8, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_ocfs2_recover_node(i32 %10, i32 %11, i32 %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ocfs2_replay_journal(%struct.ocfs2_super* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @trace_ocfs2_recover_node_skip(i32 %35, i32 %36)
  store i32 0, i32* %7, align 4
  br label %77

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %77

41:                                               ; preds = %3
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ocfs2_begin_local_alloc_recovery(%struct.ocfs2_super* %42, i32 %43, %struct.ocfs2_dinode** %8)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %77

50:                                               ; preds = %41
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ocfs2_begin_truncate_log_recovery(%struct.ocfs2_super* %51, i32 %52, %struct.ocfs2_dinode** %9)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ocfs2_clear_slot(%struct.ocfs2_super* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %70 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %74 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %75 = load i32, i32* @ORPHAN_NEED_TRUNCATE, align 4
  %76 = call i32 @ocfs2_queue_recovery_completion(i32 %71, i32 %72, %struct.ocfs2_dinode* %73, %struct.ocfs2_dinode* %74, i32* null, i32 %75)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %68, %47, %38, %34
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @trace_ocfs2_recover_node(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_replay_journal(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_recover_node_skip(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_begin_local_alloc_recovery(%struct.ocfs2_super*, i32, %struct.ocfs2_dinode**) #1

declare dso_local i32 @ocfs2_begin_truncate_log_recovery(%struct.ocfs2_super*, i32, %struct.ocfs2_dinode**) #1

declare dso_local i32 @ocfs2_clear_slot(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, %struct.ocfs2_dinode*, %struct.ocfs2_dinode*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
