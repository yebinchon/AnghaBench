; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_create_new_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_create_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i32, %struct.ext4_ext_path**, %struct.ext4_extent*)* @ext4_ext_create_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_create_new_leaf(i32* %0, %struct.inode* %1, i32 %2, i32 %3, %struct.ext4_ext_path** %4, %struct.ext4_extent* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_ext_path**, align 8
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca %struct.ext4_ext_path*, align 8
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ext4_ext_path** %4, %struct.ext4_ext_path*** %11, align 8
  store %struct.ext4_extent* %5, %struct.ext4_extent** %12, align 8
  %18 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %19 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %18, align 8
  store %struct.ext4_ext_path* %19, %struct.ext4_ext_path** %13, align 8
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %118, %6
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i32 @ext_depth(%struct.inode* %21)
  store i32 %22, i32* %15, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  store %struct.ext4_ext_path* %26, %struct.ext4_ext_path** %14, align 8
  br label %27

27:                                               ; preds = %37, %20
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %32 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %16, align 4
  %40 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %41 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %40, i32 -1
  store %struct.ext4_ext_path* %41, %struct.ext4_ext_path** %14, align 8
  br label %27

42:                                               ; preds = %35
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %44 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %51 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @ext4_ext_split(i32* %47, %struct.inode* %48, i32 %49, %struct.ext4_ext_path* %50, %struct.ext4_extent* %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %121

57:                                               ; preds = %46
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %60 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %58, i32 %63, %struct.ext4_ext_path** %64, i32 %65)
  store %struct.ext4_ext_path* %66, %struct.ext4_ext_path** %13, align 8
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %68 = call i64 @IS_ERR(%struct.ext4_ext_path* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %72 = call i32 @PTR_ERR(%struct.ext4_ext_path* %71)
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %70, %57
  br label %120

74:                                               ; preds = %42
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ext4_ext_grow_indepth(i32* %75, %struct.inode* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %121

82:                                               ; preds = %74
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %85 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %83, i32 %88, %struct.ext4_ext_path** %89, i32 %90)
  store %struct.ext4_ext_path* %91, %struct.ext4_ext_path** %13, align 8
  %92 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %93 = call i64 @IS_ERR(%struct.ext4_ext_path* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %97 = call i32 @PTR_ERR(%struct.ext4_ext_path* %96)
  store i32 %97, i32* %17, align 4
  br label %121

98:                                               ; preds = %82
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call i32 @ext_depth(%struct.inode* %99)
  store i32 %100, i32* %15, align 4
  %101 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i64 %103
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %109, i64 %111
  %113 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %108, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %98
  br label %20

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %73
  br label %121

121:                                              ; preds = %120, %95, %81, %56
  %122 = load i32, i32* %17, align 4
  ret i32 %122
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_split(i32*, %struct.inode*, i32, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i32, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_grow_indepth(i32*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
