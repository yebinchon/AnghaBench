; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_drop_dentry_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_drop_dentry_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dentry_lock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_dentry_lock*)* @ocfs2_drop_dentry_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_drop_dentry_lock(%struct.ocfs2_super* %0, %struct.ocfs2_dentry_lock* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_dentry_lock* %1, %struct.ocfs2_dentry_lock** %4, align 8
  %5 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %6 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @iput(i32 %7)
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %10, i32 0, i32 0
  %12 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %9, i32* %11)
  %13 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %13, i32 0, i32 0
  %15 = call i32 @ocfs2_lock_res_free(i32* %14)
  %16 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %17 = call i32 @kfree(%struct.ocfs2_dentry_lock* %16)
  ret void
}

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dentry_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
