; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_needs_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_needs_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"slot %d, invalid truncate log parameters: used = %u, count = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %8, %struct.buffer_head** %3, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %12, %struct.ocfs2_dinode** %4, align 8
  %13 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %15, %struct.ocfs2_truncate_log** %5, align 8
  %16 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  %20 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = icmp sgt i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  %33 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  %37 = call i32 @mlog_bug_on_msg(i32 %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %32, i64 %36)
  %38 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  %42 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  %46 = icmp eq i64 %41, %45
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
