; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_update_super_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_update_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT2_FEATURE_COMPAT_EXT_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext2_xattr_update_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_xattr_update_super_block(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = load %struct.super_block*, %struct.super_block** %2, align 8
  %4 = load i32, i32* @EXT2_FEATURE_COMPAT_EXT_ATTR, align 4
  %5 = call i64 @EXT2_HAS_COMPAT_FEATURE(%struct.super_block* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call i32 @ext2_update_dynamic_rev(%struct.super_block* %13)
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = load i32, i32* @EXT2_FEATURE_COMPAT_EXT_ATTR, align 4
  %17 = call i32 @EXT2_SET_COMPAT_FEATURE(%struct.super_block* %15, i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mark_buffer_dirty(i32 %25)
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @EXT2_HAS_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT2_SET_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
