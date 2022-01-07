; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_squashfs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_squashfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { %struct.squashfs_sb_info*, %struct.squashfs_sb_info*, %struct.squashfs_sb_info*, %struct.squashfs_sb_info*, %struct.squashfs_sb_info*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @squashfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @squashfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.squashfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %7 = icmp ne %struct.squashfs_sb_info* %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %10, align 8
  store %struct.squashfs_sb_info* %11, %struct.squashfs_sb_info** %3, align 8
  %12 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @squashfs_cache_delete(i32 %14)
  %16 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @squashfs_cache_delete(i32 %18)
  %20 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @squashfs_cache_delete(i32 %22)
  %24 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %25 = call i32 @squashfs_decompressor_destroy(%struct.squashfs_sb_info* %24)
  %26 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %26, i32 0, i32 4
  %28 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %27, align 8
  %29 = call i32 @kfree(%struct.squashfs_sb_info* %28)
  %30 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %30, i32 0, i32 3
  %32 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %31, align 8
  %33 = call i32 @kfree(%struct.squashfs_sb_info* %32)
  %34 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %35 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %34, i32 0, i32 2
  %36 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %35, align 8
  %37 = call i32 @kfree(%struct.squashfs_sb_info* %36)
  %38 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %38, i32 0, i32 1
  %40 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %39, align 8
  %41 = call i32 @kfree(%struct.squashfs_sb_info* %40)
  %42 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %42, i32 0, i32 0
  %44 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %43, align 8
  %45 = call i32 @kfree(%struct.squashfs_sb_info* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %47, align 8
  %49 = call i32 @kfree(%struct.squashfs_sb_info* %48)
  %50 = load %struct.super_block*, %struct.super_block** %2, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  store %struct.squashfs_sb_info* null, %struct.squashfs_sb_info** %51, align 8
  br label %52

52:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @squashfs_cache_delete(i32) #1

declare dso_local i32 @squashfs_decompressor_destroy(%struct.squashfs_sb_info*) #1

declare dso_local i32 @kfree(%struct.squashfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
