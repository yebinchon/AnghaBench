; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_reiserfs_down_read_safe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_reiserfs_down_read_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rw_semaphore*, %struct.super_block*)* @reiserfs_down_read_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_down_read_safe(%struct.rw_semaphore* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.rw_semaphore*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rw_semaphore*, %struct.rw_semaphore** %3, align 8
  %9 = call i32 @down_read(%struct.rw_semaphore* %8)
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %10, i32 %11)
  ret void
}

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @down_read(%struct.rw_semaphore*) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
