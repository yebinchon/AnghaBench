; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c___f2fs_commit_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c___f2fs_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.f2fs_super_block = type { i32 }

@F2FS_SUPER_OFFSET = common dso_local global i64 0, align 8
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.f2fs_super_block*)* @__f2fs_commit_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_commit_super(%struct.buffer_head* %0, %struct.f2fs_super_block* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.f2fs_super_block*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store %struct.f2fs_super_block* %1, %struct.f2fs_super_block** %4, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %6 = call i32 @lock_buffer(%struct.buffer_head* %5)
  %7 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %8 = icmp ne %struct.f2fs_super_block* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @F2FS_SUPER_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %16 = call i32 @memcpy(i64 %14, %struct.f2fs_super_block* %15, i32 4)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %19 = call i32 @set_buffer_dirty(%struct.buffer_head* %18)
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = call i32 @unlock_buffer(%struct.buffer_head* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = load i32, i32* @REQ_SYNC, align 4
  %24 = load i32, i32* @REQ_PREFLUSH, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @REQ_FUA, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @__sync_dirty_buffer(%struct.buffer_head* %22, i32 %27)
  ret i32 %28
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, %struct.f2fs_super_block*, i32) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @__sync_dirty_buffer(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
