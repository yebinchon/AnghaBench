; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_get_free_dnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_get_free_dnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_get_free_dnodes(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hpfs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %6)
  store %struct.hpfs_sb_info* %7, %struct.hpfs_sb_info** %4, align 8
  %8 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %4, align 8
  %9 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hpfs_count_one_bitmap(%struct.super_block* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_count_one_bitmap(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
