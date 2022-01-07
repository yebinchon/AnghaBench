; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_exhash_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_exhash_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64 }
%struct.buffer_head = type { i64 }
%struct.gfs2_leaf = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_leaf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @BIT(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %19 = call i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i64 @IS_ERR(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %2, align 4
  br label %102

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %89, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be64_to_cpu(i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %31
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @get_leaf(%struct.gfs2_inode* %40, i64 %41, %struct.buffer_head** %4)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %100

46:                                               ; preds = %39
  %47 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %50, %struct.gfs2_leaf** %5, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be16_to_cpu(i32 %56)
  %58 = sub nsw i64 %53, %57
  %59 = call i64 @BIT(i64 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %61, 1
  %63 = xor i64 %62, -1
  %64 = and i64 %60, %63
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp uge i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %13, align 4
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @leaf_dealloc(%struct.gfs2_inode* %72, i64 %73, i64 %74, i64 %75, %struct.buffer_head* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %46
  br label %100

84:                                               ; preds = %46
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %8, align 8
  br label %89

86:                                               ; preds = %31
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %86, %84
  br label %27

90:                                               ; preds = %27
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %96 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %83, %45
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @BIT(i64) #1

declare dso_local i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @leaf_dealloc(%struct.gfs2_inode*, i64, i64, i64, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
