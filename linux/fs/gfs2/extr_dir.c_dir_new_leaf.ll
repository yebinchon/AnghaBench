; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_new_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_leaf = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @dir_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_new_leaf(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_leaf*, align 8
  %10 = alloca %struct.gfs2_leaf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %8, align 8
  store i32 1, i32* %11, align 4
  %17 = load %struct.qstr*, %struct.qstr** %5, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 32, %22
  %24 = ashr i32 %19, %23
  store i32 %24, i32* %13, align 4
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @get_first_leaf(%struct.gfs2_inode* %25, i32 %26, %struct.buffer_head** %7)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %3, align 4
  br label %115

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %39, %struct.gfs2_leaf** %10, align 8
  %40 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %41 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be64_to_cpu(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %59

47:                                               ; preds = %33
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @get_leaf(%struct.gfs2_inode* %50, i32 %51, %struct.buffer_head** %7)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %115

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  br i1 true, label %33, label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %61 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = call i32 @gfs2_trans_add_meta(i32 %62, %struct.buffer_head* %63)
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %67 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be16_to_cpu(i32 %68)
  %70 = call %struct.gfs2_leaf* @new_leaf(%struct.inode* %65, %struct.buffer_head** %6, i32 %69)
  store %struct.gfs2_leaf* %70, %struct.gfs2_leaf** %9, align 8
  %71 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %9, align 8
  %72 = icmp ne %struct.gfs2_leaf* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %59
  %74 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %115

78:                                               ; preds = %59
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @cpu_to_be32(i32 %79)
  %81 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %9, align 8
  %82 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cpu_to_be64(i32 %85)
  %87 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %88 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %94 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %93, %struct.buffer_head** %6)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %78
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %115

99:                                               ; preds = %78
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %101 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %104 = call i32 @gfs2_trans_add_meta(i32 %102, %struct.buffer_head* %103)
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 1
  %107 = call i32 @gfs2_add_inode_blocks(i32* %106, i32 1)
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %108, i64 %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %99, %97, %73, %55, %30
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @get_first_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local %struct.gfs2_leaf* @new_leaf(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
