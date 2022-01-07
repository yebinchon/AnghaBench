; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c_hfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.super_block*, %struct.super_block** %10, align 8
  %20 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %160

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %160

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i32 @hfs_extend_file(%struct.inode* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %160

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %44
  br label %61

60:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @hfs_ext_find_block(i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %109

75:                                               ; preds = %61
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @hfs_ext_read_extent(%struct.inode* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %75
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %90, %94
  %96 = call i32 @hfs_ext_find_block(i32 %89, i32 %95)
  store i32 %96, i32* %11, align 4
  br label %104

97:                                               ; preds = %75
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %160

104:                                              ; preds = %85
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %104, %68
  %110 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %111 = load %struct.super_block*, %struct.super_block** %10, align 8
  %112 = load %struct.super_block*, %struct.super_block** %10, align 8
  %113 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %112)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.super_block*, %struct.super_block** %10, align 8
  %118 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %117)
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %115, %122
  %124 = load i64, i64* %7, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.super_block*, %struct.super_block** %10, align 8
  %127 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %126)
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = srem i32 %125, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %123, %131
  %133 = call i32 @map_bh(%struct.buffer_head* %110, %struct.super_block* %111, i64 %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %109
  %137 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %138 = call i32 @set_buffer_new(%struct.buffer_head* %137)
  %139 = load %struct.super_block*, %struct.super_block** %10, align 8
  %140 = getelementptr inbounds %struct.super_block, %struct.super_block* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.inode*, %struct.inode** %6, align 8
  %143 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %141
  store i32 %146, i32* %144, align 4
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %147)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = load %struct.super_block*, %struct.super_block** %10, align 8
  %154 = getelementptr inbounds %struct.super_block, %struct.super_block* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @inode_add_bytes(%struct.inode* %152, i32 %155)
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = call i32 @mark_inode_dirty(%struct.inode* %157)
  br label %159

159:                                              ; preds = %136, %109
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %97, %56, %41, %33
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_extend_file(%struct.inode*) #1

declare dso_local i32 @hfs_ext_find_block(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_ext_read_extent(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
