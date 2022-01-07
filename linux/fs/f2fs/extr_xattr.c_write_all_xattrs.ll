; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_write_all_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_write_all_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@XATTR_NODE_OFFSET = common dso_local global i32 0, align 4
@VALID_XATTR_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*, %struct.page*)* @write_all_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_all_xattrs(%struct.inode* %0, i64 %1, i8* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dnode_of_data, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %19)
  store %struct.f2fs_sb_info* %20, %struct.f2fs_sb_info** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @inline_xattr_size(%struct.inode* %21)
  store i64 %22, i64* %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %34 = call i32 @f2fs_alloc_nid(%struct.f2fs_sb_info* %33, i32* %16)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %196

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %26, %4
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %110

43:                                               ; preds = %40
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = call i8* @inline_xattr_addr(%struct.inode* %47, %struct.page* %48)
  store i8* %49, i8** %14, align 8
  br label %69

50:                                               ; preds = %43
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %51, i64 %54)
  store %struct.page* %55, %struct.page** %12, align 8
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = call i64 @IS_ERR(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %60, i32 %61)
  %63 = load %struct.page*, %struct.page** %12, align 8
  %64 = call i32 @PTR_ERR(%struct.page* %63)
  store i32 %64, i32* %5, align 4
  br label %196

65:                                               ; preds = %50
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.page*, %struct.page** %12, align 8
  %68 = call i8* @inline_xattr_addr(%struct.inode* %66, %struct.page* %67)
  store i8* %68, i8** %14, align 8
  br label %69

69:                                               ; preds = %65, %46
  %70 = load %struct.page*, %struct.page** %9, align 8
  %71 = icmp ne %struct.page* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load %struct.page*, %struct.page** %9, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load %struct.page*, %struct.page** %12, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi %struct.page* [ %73, %72 ], [ %75, %74 ]
  %78 = load i32, i32* @NODE, align 4
  %79 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %77, i32 %78, i32 1, i32 1)
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ule i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = call i32 @f2fs_truncate_xattr_node(%struct.inode* %84)
  store i32 %85, i32* %17, align 4
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %86, i32 %87)
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.page*, %struct.page** %12, align 8
  %93 = call i32 @f2fs_put_page(%struct.page* %92, i32 1)
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %5, align 4
  br label %196

95:                                               ; preds = %83
  %96 = load i8*, i8** %14, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @memcpy(i8* %96, i8* %97, i64 %98)
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = icmp ne %struct.page* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load %struct.page*, %struct.page** %9, align 8
  br label %106

104:                                              ; preds = %95
  %105 = load %struct.page*, %struct.page** %12, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi %struct.page* [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 @set_page_dirty(%struct.page* %107)
  br label %192

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109, %40
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %117, i64 %121)
  store %struct.page* %122, %struct.page** %15, align 8
  %123 = load %struct.page*, %struct.page** %15, align 8
  %124 = call i64 @IS_ERR(%struct.page* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load %struct.page*, %struct.page** %15, align 8
  %128 = call i32 @PTR_ERR(%struct.page* %127)
  store i32 %128, i32* %17, align 4
  %129 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %129, i32 %130)
  br label %192

132:                                              ; preds = %116
  %133 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %133, i32 %134)
  %136 = load %struct.page*, %struct.page** %15, align 8
  %137 = load i32, i32* @NODE, align 4
  %138 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %136, i32 %137, i32 1, i32 1)
  br label %158

139:                                              ; preds = %110
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @set_new_dnode(%struct.dnode_of_data* %18, %struct.inode* %140, i32* null, i32* null, i32 %141)
  %143 = load i32, i32* @XATTR_NODE_OFFSET, align 4
  %144 = call %struct.page* @f2fs_new_node_page(%struct.dnode_of_data* %18, i32 %143)
  store %struct.page* %144, %struct.page** %15, align 8
  %145 = load %struct.page*, %struct.page** %15, align 8
  %146 = call i64 @IS_ERR(%struct.page* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.page*, %struct.page** %15, align 8
  %150 = call i32 @PTR_ERR(%struct.page* %149)
  store i32 %150, i32* %17, align 4
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %151, i32 %152)
  br label %192

154:                                              ; preds = %139
  %155 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %132
  %159 = load %struct.page*, %struct.page** %15, align 8
  %160 = call i8* @page_address(%struct.page* %159)
  store i8* %160, i8** %13, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i8*, i8** %14, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @memcpy(i8* %164, i8* %165, i64 %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load i8*, i8** %13, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr i8, i8* %170, i64 %171
  %173 = load i64, i64* @VALID_XATTR_BLOCK_SIZE, align 8
  %174 = call i32 @memcpy(i8* %169, i8* %172, i64 %173)
  %175 = load i64, i64* %11, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %168
  %178 = load %struct.page*, %struct.page** %9, align 8
  %179 = icmp ne %struct.page* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load %struct.page*, %struct.page** %9, align 8
  br label %184

182:                                              ; preds = %177
  %183 = load %struct.page*, %struct.page** %12, align 8
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi %struct.page* [ %181, %180 ], [ %183, %182 ]
  %186 = call i32 @set_page_dirty(%struct.page* %185)
  br label %187

187:                                              ; preds = %184, %168
  %188 = load %struct.page*, %struct.page** %15, align 8
  %189 = call i32 @set_page_dirty(%struct.page* %188)
  %190 = load %struct.page*, %struct.page** %15, align 8
  %191 = call i32 @f2fs_put_page(%struct.page* %190, i32 1)
  br label %192

192:                                              ; preds = %187, %148, %126, %106
  %193 = load %struct.page*, %struct.page** %12, align 8
  %194 = call i32 @f2fs_put_page(%struct.page* %193, i32 1)
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %91, %59, %36
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @inline_xattr_size(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_alloc_nid(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i8* @inline_xattr_addr(%struct.inode*, %struct.page*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_truncate_xattr_node(%struct.inode*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local %struct.page* @f2fs_new_node_page(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
