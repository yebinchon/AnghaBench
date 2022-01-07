; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_free_lock_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_free_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.file_lock_context* }
%struct.file_lock_context = type { i32 }

@flctx_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_free_lock_context(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.file_lock_context*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  store %struct.file_lock_context* %6, %struct.file_lock_context** %3, align 8
  %7 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %8 = call i64 @unlikely(%struct.file_lock_context* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call i32 @locks_check_ctx_lists(%struct.inode* %11)
  %13 = load i32, i32* @flctx_cache, align 4
  %14 = load %struct.file_lock_context*, %struct.file_lock_context** %3, align 8
  %15 = call i32 @kmem_cache_free(i32 %13, %struct.file_lock_context* %14)
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @unlikely(%struct.file_lock_context*) #1

declare dso_local i32 @locks_check_ctx_lists(%struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.file_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
