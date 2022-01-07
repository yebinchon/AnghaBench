; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c___ocfs2_get_steal_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c___ocfs2_get_steal_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32 }

@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @__ocfs2_get_steal_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_get_steal_slot(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
