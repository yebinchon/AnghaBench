; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_seek_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_seek_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dnode_of_data = type { i64, i32, i32 }

@SEEK_HOLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SEEK_DATA = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @f2fs_seek_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_seek_block(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dnode_of_data, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i32 @inode_lock(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @i_size_read(%struct.inode* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %177

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @f2fs_has_inline_data(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i64 @f2fs_has_inline_dentry(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SEEK_HOLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %49, %45
  br label %160

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %11, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @__get_first_dirty_index(i32 %59, i64 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %149, %52
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %154

67:                                               ; preds = %63
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call i32 @set_new_dnode(%struct.dnode_of_data* %10, %struct.inode* %68, i32* null, i32* null, i32 0)
  %70 = load i64, i64* %11, align 8
  %71 = load i32, i32* @LOOKUP_NODE, align 4
  %72 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %10, i64 %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %177

81:                                               ; preds = %75, %67
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SEEK_DATA, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @f2fs_get_next_page_offset(%struct.dnode_of_data* %10, i64 %91)
  store i64 %92, i64* %11, align 8
  br label %149

93:                                               ; preds = %86
  br label %160

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call i64 @ADDRS_PER_PAGE(i32 %97, %struct.inode* %98)
  store i64 %99, i64* %12, align 8
  br label %100

100:                                              ; preds = %137, %95
  %101 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %147

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @datablock_addr(i32 %107, i32 %109, i64 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i64 @__is_valid_data_blkaddr(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %105
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i32 @F2FS_I_SB(%struct.inode* %117)
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %121 = call i32 @f2fs_is_valid_blkaddr(i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %10)
  br label %177

125:                                              ; preds = %116, %105
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call i32 @F2FS_I_SB(%struct.inode* %126)
  %128 = load i32, i32* %17, align 4
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @__found_offset(i32 %127, i32 %128, i64 %129, i64 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %10)
  br label %160

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @PAGE_SHIFT, align 4
  %146 = shl i32 %144, %145
  store i32 %146, i32* %14, align 4
  br label %100

147:                                              ; preds = %100
  %148 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %10)
  br label %149

149:                                              ; preds = %147, %90
  %150 = load i64, i64* %11, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* @PAGE_SHIFT, align 4
  %153 = shl i32 %151, %152
  store i32 %153, i32* %14, align 4
  br label %63

154:                                              ; preds = %63
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @SEEK_DATA, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %177

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %134, %93, %51
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @SEEK_HOLE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* %15, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %168, %164, %160
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = call i32 @inode_unlock(%struct.inode* %171)
  %173 = load %struct.file*, %struct.file** %5, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @vfs_setpos(%struct.file* %173, i32 %174, i32 %175)
  store i32 %176, i32* %4, align 4
  br label %182

177:                                              ; preds = %158, %123, %80, %36
  %178 = load %struct.inode*, %struct.inode** %8, align 8
  %179 = call i32 @inode_unlock(%struct.inode* %178)
  %180 = load i32, i32* @ENXIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %177, %170
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i64 @__get_first_dirty_index(i32, i64, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i64 @f2fs_get_next_page_offset(%struct.dnode_of_data*, i64) #1

declare dso_local i64 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i32 @datablock_addr(i32, i32, i64) #1

declare dso_local i64 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(i32, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @__found_offset(i32, i32, i64, i64, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @vfs_setpos(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
