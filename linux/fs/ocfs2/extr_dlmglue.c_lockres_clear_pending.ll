; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_lockres_clear_pending.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_lockres_clear_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*)* @lockres_clear_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockres_clear_pending(%struct.ocfs2_lock_res* %0, i32 %1, %struct.ocfs2_super* %2) #0 {
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_super* %2, %struct.ocfs2_super** %6, align 8
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %15 = call i32 @__lockres_clear_pending(%struct.ocfs2_lock_res* %12, i32 %13, %struct.ocfs2_super* %14)
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lockres_clear_pending(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
