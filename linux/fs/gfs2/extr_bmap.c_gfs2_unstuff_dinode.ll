; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_unstuff_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_unstuff_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_dinode = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_dinode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = call i32 @gfs2_is_dir(%struct.gfs2_inode* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %18 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %17, %struct.buffer_head** %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %105

22:                                               ; preds = %2
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 2
  %25 = call i64 @i_size_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %29 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %28, i32* %8, i32* %11, i32 0, i32* null)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %102

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 2
  %39 = call i32 @GFS2_SB(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gfs2_trans_remove_revoke(i32 %39, i32 %40, i32 1)
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode* %42, i32 %43, %struct.buffer_head** %5)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %102

48:                                               ; preds = %36
  %49 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %51 = call i32 @gfs2_buffer_copy_tail(%struct.buffer_head* %49, i32 4, %struct.buffer_head* %50, i32 16)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  br label %64

54:                                               ; preds = %33
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call i32 @gfs2_unstuffer_page(%struct.gfs2_inode* %55, %struct.buffer_head* %56, i32 %57, %struct.page* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %102

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %22
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = call i32 @gfs2_trans_add_meta(i32 %68, %struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %74, %struct.gfs2_dinode** %7, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %76 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %75, i32 16)
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 2
  %79 = call i64 @i_size_read(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_be64(i32 %82)
  %84 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %85 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %84, i64 1
  %86 = bitcast %struct.gfs2_dinode* %85 to i8**
  store i8* %83, i8** %86, align 8
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %88 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %87, i32 0, i32 2
  %89 = call i32 @gfs2_add_inode_blocks(i32* %88, i32 1)
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %91 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %90, i32 0, i32 2
  %92 = call i32 @gfs2_get_inode_blocks(i32* %91)
  %93 = call i8* @cpu_to_be64(i32 %92)
  %94 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %95 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %81, %65
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %98 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = call i32 @cpu_to_be16(i32 1)
  %100 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %101 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %62, %47, %32
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  br label %105

105:                                              ; preds = %102, %21
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %107 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %106, i32 0, i32 1
  %108 = call i32 @up_write(i32* %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @gfs2_is_dir(%struct.gfs2_inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_remove_revoke(i32, i32, i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_dir_get_new_buffer(%struct.gfs2_inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_buffer_copy_tail(%struct.buffer_head*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_unstuffer_page(%struct.gfs2_inode*, %struct.buffer_head*, i32, %struct.page*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_get_inode_blocks(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
