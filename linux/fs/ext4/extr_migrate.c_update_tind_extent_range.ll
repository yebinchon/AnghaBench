; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_update_tind_extent_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_update_tind_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.migrate_struct = type { i64 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.migrate_struct*)* @update_tind_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tind_extent_range(i32* %0, %struct.inode* %1, i32 %2, %struct.migrate_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.migrate_struct*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.migrate_struct* %3, %struct.migrate_struct** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__* %24, i32 %25, i32 0)
  store %struct.buffer_head* %26, %struct.buffer_head** %10, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %28 = call i64 @IS_ERR(%struct.buffer_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = call i32 @PTR_ERR(%struct.buffer_head* %31)
  store i32 %32, i32* %5, align 4
  br label %81

33:                                               ; preds = %4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %11, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %74, %33
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %14, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le32_to_cpu(i64 %57)
  %59 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %60 = call i32 @update_dind_extent_range(i32* %51, %struct.inode* %52, i32 %58, %struct.migrate_struct* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %77

64:                                               ; preds = %50
  br label %73

65:                                               ; preds = %43
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = mul i64 %66, %67
  %69 = load %struct.migrate_struct*, %struct.migrate_struct** %9, align 8
  %70 = getelementptr inbounds %struct.migrate_struct, %struct.migrate_struct* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %65, %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %38

77:                                               ; preds = %63, %38
  %78 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %79 = call i32 @put_bh(%struct.buffer_head* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %30
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @update_dind_extent_range(i32*, %struct.inode*, i32, %struct.migrate_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
