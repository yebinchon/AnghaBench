; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_try_to_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_try_to_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_try_to_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_try_to_merge(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, %struct.ext4_extent* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_ext_path*, align 8
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca %struct.ext4_extent_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %7, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @ext_depth(%struct.inode* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i64 %16
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 0
  %19 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %20 = icmp eq %struct.ext4_extent_header* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %27, align 8
  store %struct.ext4_extent_header* %28, %struct.ext4_extent_header** %9, align 8
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %9, align 8
  %31 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %30)
  %32 = icmp ugt %struct.ext4_extent* %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %37 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %36, i64 -1
  %38 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %34, %struct.ext4_ext_path* %35, %struct.ext4_extent* %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %33, %4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %46 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %43, %struct.ext4_ext_path* %44, %struct.ext4_extent* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %7, align 8
  %51 = call i32 @ext4_ext_try_to_merge_up(i32* %48, %struct.inode* %49, %struct.ext4_ext_path* %50)
  ret void
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_try_to_merge_right(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge_up(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
