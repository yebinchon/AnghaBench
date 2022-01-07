; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_count_desc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_count_desc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*)* @nilfs_palloc_count_desc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_palloc_count_desc_blocks(%struct.inode* %0, i64* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.TYPE_4__* @NILFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nilfs_bmap_last_key(i32 %10, i64* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_3__* @NILFS_MDT(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @DIV_ROUND_UP(i64 %19, i32 %23)
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @nilfs_bmap_last_key(i32, i64*) #1

declare dso_local %struct.TYPE_4__* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.TYPE_3__* @NILFS_MDT(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
