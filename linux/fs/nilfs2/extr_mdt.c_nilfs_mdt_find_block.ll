; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_find_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_find_block(%struct.inode* %0, i64 %1, i64 %2, i64* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %80

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %27 = call i32 @nilfs_mdt_read_block(%struct.inode* %24, i64 %25, i32 1, %struct.buffer_head** %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = load i64*, i64** %10, align 8
  store i64 %31, i64* %32, align 8
  br label %78

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @ULONG_MAX, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ true, %33 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %78

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  %55 = call i32 @nilfs_bmap_seek_key(i32 %52, i64 %54, i64* %12)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %66 = call i32 @nilfs_mdt_read_block(%struct.inode* %63, i64 %64, i32 1, %struct.buffer_head** %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %12, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %62
  br label %76

73:                                               ; preds = %58
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %47, %30
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %20
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_mdt_read_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_bmap_seek_key(i32, i64, i64*) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
