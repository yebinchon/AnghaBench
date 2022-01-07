; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_toggle_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_toggle_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCFS2_JOURNAL_DIRTY_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32)* @ocfs2_journal_toggle_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_journal*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 1
  %14 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %13, align 8
  store %struct.ocfs2_journal* %14, %struct.ocfs2_journal** %9, align 8
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  %16 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %15, i32 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %10, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %11, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %23 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %3
  %41 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %56 = call i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode* %55)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %64, i32 0, i32 0
  %66 = call i32 @ocfs2_compute_meta_ecc(i32 %60, i64 %63, i32* %65)
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %69 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  %70 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @INODE_CACHE(i32 %71)
  %73 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %67, %struct.buffer_head* %68, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %79

79:                                               ; preds = %76, %57
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_bump_recovery_generation(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
