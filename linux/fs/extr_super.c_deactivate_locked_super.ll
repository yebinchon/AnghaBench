; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c_deactivate_locked_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c_deactivate_locked_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32, %struct.file_system_type* }
%struct.file_system_type = type { i32 (%struct.super_block*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deactivate_locked_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.file_system_type*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 5
  %6 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  store %struct.file_system_type* %6, %struct.file_system_type** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 4
  %9 = call i64 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @cleancache_invalidate_fs(%struct.super_block* %12)
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 3
  %16 = call i32 @unregister_shrinker(i32* %15)
  %17 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %18 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %17, i32 0, i32 0
  %19 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %18, align 8
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = call i32 %19(%struct.super_block* %20)
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 2
  %24 = call i32 @list_lru_destroy(i32* %23)
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 1
  %27 = call i32 @list_lru_destroy(i32* %26)
  %28 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %29 = call i32 @put_filesystem(%struct.file_system_type* %28)
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = call i32 @put_super(%struct.super_block* %30)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = call i32 @up_write(i32* %34)
  br label %36

36:                                               ; preds = %32, %11
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cleancache_invalidate_fs(%struct.super_block*) #1

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @list_lru_destroy(i32*) #1

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

declare dso_local i32 @put_super(%struct.super_block*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
