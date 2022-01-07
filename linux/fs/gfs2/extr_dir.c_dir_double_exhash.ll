; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_double_exhash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_double_exhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i8**, i32, i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @dir_double_exhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_double_exhash(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = call i8** @gfs2_dir_get_hash_table(%struct.gfs2_inode* %20)
  store i8** %21, i8*** %7, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = call i64 @IS_ERR(i8** %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i8**, i8*** %7, align 8
  %27 = call i32 @PTR_ERR(i8** %26)
  store i32 %27, i32* %2, align 4
  br label %124

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = load i32, i32* @__GFP_NOWARN, align 4
  %32 = or i32 %30, %31
  %33 = call i8** @kmalloc_array(i32 %29, i32 2, i32 %32)
  store i8** %33, i8*** %8, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = load i32, i32* @PAGE_KERNEL, align 4
  %41 = call i8** @__vmalloc(i32 %38, i32 %39, i32 %40)
  store i8** %41, i8*** %8, align 8
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i8**, i8*** %8, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %42
  %49 = load i8**, i8*** %8, align 8
  store i8** %49, i8*** %9, align 8
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %51 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %50, %struct.buffer_head** %4)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %120

55:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %9, align 8
  store i8* %66, i8** %67, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %7, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = bitcast i8** %76 to i8*
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 2
  %80 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %75, i8* %77, i32 0, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %82, 2
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %103

86:                                               ; preds = %74
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %88 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %87)
  %89 = load i8**, i8*** %8, align 8
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %91 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %90, i32 0, i32 0
  store i8** %89, i8*** %91, align 8
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %93 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %96, i32 %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  store i32 0, i32* %2, align 4
  br label %124

103:                                              ; preds = %85
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = bitcast i8** %105 to i8*
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %104, i8* %106, i32 0, i32 %107)
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @i_size_write(i32* %110, i32 %111)
  %113 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %113, i32 %116)
  %118 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  br label %120

120:                                              ; preds = %103, %54
  %121 = load i8**, i8*** %8, align 8
  %122 = call i32 @kvfree(i8** %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %86, %45, %25
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i8** @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

declare dso_local i8** @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dir_write_data(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @i_size_write(i32*, i32) #1

declare dso_local i32 @kvfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
