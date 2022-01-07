; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___clone_blkaddrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c___clone_blkaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i64, i32, i32, i32, i32 }
%struct.node_info = type { i32 }
%struct.page = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@ALLOC_NODE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i64*, i32*, i64, i64, i64, i32)* @__clone_blkaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_blkaddrs(%struct.inode* %0, %struct.inode* %1, i64* %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.f2fs_sb_info*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dnode_of_data, align 8
  %22 = alloca %struct.node_info, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.page*, align 8
  %26 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %27)
  store %struct.f2fs_sb_info* %28, %struct.f2fs_sb_info** %18, align 8
  store i64 0, i64* %19, align 8
  br label %29

29:                                               ; preds = %222, %43, %8
  %30 = load i64, i64* %19, align 8
  %31 = load i64, i64* %16, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %223

33:                                               ; preds = %29
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %19, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NULL_ADDR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %19, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %19, align 8
  br label %29

46:                                               ; preds = %40, %33
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %19, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %19, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NULL_ADDR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %170

59:                                               ; preds = %52, %46
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = call i32 @set_new_dnode(%struct.dnode_of_data* %21, %struct.inode* %60, i32* null, i32* null, i32 0)
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %19, align 8
  %64 = add i64 %62, %63
  %65 = load i32, i32* @ALLOC_NODE, align 4
  %66 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %21, i64 %64, i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %20, align 4
  store i32 %70, i32* %9, align 4
  br label %224

71:                                               ; preds = %59
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %18, align 8
  %73 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %72, i32 %74, %struct.node_info* %22)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %21)
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %9, align 4
  br label %224

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i64 @ADDRS_PER_PAGE(i32 %83, %struct.inode* %84)
  %86 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %85, %87
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %19, align 8
  %91 = sub i64 %89, %90
  %92 = call i64 @min(i64 %88, i64 %91)
  store i64 %92, i64* %24, align 8
  br label %93

93:                                               ; preds = %166, %81
  %94 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @datablock_addr(i32 %95, i32 %97, i64 %99)
  %101 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  %102 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %21, i32 1)
  %103 = load i32*, i32** %13, align 8
  %104 = load i64, i64* %19, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %93
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = call i32 @f2fs_i_blocks_write(%struct.inode* %109, i32 1, i32 0, i32 0)
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = call i32 @f2fs_i_blocks_write(%struct.inode* %111, i32 1, i32 1, i32 0)
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %18, align 8
  %114 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i64*, i64** %12, align 8
  %117 = load i64, i64* %19, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.node_info, %struct.node_info* %22, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @f2fs_replace_block(%struct.f2fs_sb_info* %113, %struct.dnode_of_data* %21, i32 %115, i64 %119, i32 %121, i32 1, i32 0)
  %123 = load i32*, i32** %13, align 8
  %124 = load i64, i64* %19, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %108, %93
  %127 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %21, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load i64, i64* %19, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %19, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %19, align 8
  %134 = add i64 %132, %133
  %135 = load i64, i64* @PAGE_SHIFT, align 8
  %136 = shl i64 %134, %135
  store i64 %136, i64* %23, align 8
  %137 = load %struct.inode*, %struct.inode** %11, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %23, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %126
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = load i64, i64* %23, align 8
  %145 = call i32 @f2fs_i_size_write(%struct.inode* %143, i64 %144)
  br label %146

146:                                              ; preds = %142, %126
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %24, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %24, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i32*, i32** %13, align 8
  %153 = load i64, i64* %19, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %151
  %158 = load i64*, i64** %12, align 8
  %159 = load i64, i64* %19, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NULL_ADDR, align 8
  %163 = icmp eq i64 %161, %162
  br label %164

164:                                              ; preds = %157, %151
  %165 = phi i1 [ true, %151 ], [ %163, %157 ]
  br label %166

166:                                              ; preds = %164, %147
  %167 = phi i1 [ false, %147 ], [ %165, %164 ]
  br i1 %167, label %93, label %168

168:                                              ; preds = %166
  %169 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %21)
  br label %222

170:                                              ; preds = %52
  %171 = load %struct.inode*, %struct.inode** %10, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %19, align 8
  %174 = add i64 %172, %173
  %175 = call %struct.page* @f2fs_get_lock_data_page(%struct.inode* %171, i64 %174, i32 1)
  store %struct.page* %175, %struct.page** %25, align 8
  %176 = load %struct.page*, %struct.page** %25, align 8
  %177 = call i64 @IS_ERR(%struct.page* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load %struct.page*, %struct.page** %25, align 8
  %181 = call i32 @PTR_ERR(%struct.page* %180)
  store i32 %181, i32* %9, align 4
  br label %224

182:                                              ; preds = %170
  %183 = load %struct.inode*, %struct.inode** %11, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %19, align 8
  %186 = add i64 %184, %185
  %187 = call %struct.page* @f2fs_get_new_data_page(%struct.inode* %183, i32* null, i64 %186, i32 1)
  store %struct.page* %187, %struct.page** %26, align 8
  %188 = load %struct.page*, %struct.page** %26, align 8
  %189 = call i64 @IS_ERR(%struct.page* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %182
  %192 = load %struct.page*, %struct.page** %25, align 8
  %193 = call i32 @f2fs_put_page(%struct.page* %192, i32 1)
  %194 = load %struct.page*, %struct.page** %26, align 8
  %195 = call i32 @PTR_ERR(%struct.page* %194)
  store i32 %195, i32* %9, align 4
  br label %224

196:                                              ; preds = %182
  %197 = load %struct.page*, %struct.page** %25, align 8
  %198 = load %struct.page*, %struct.page** %26, align 8
  %199 = call i32 @f2fs_copy_page(%struct.page* %197, %struct.page* %198)
  %200 = load %struct.page*, %struct.page** %26, align 8
  %201 = call i32 @set_page_dirty(%struct.page* %200)
  %202 = load %struct.page*, %struct.page** %26, align 8
  %203 = call i32 @f2fs_put_page(%struct.page* %202, i32 1)
  %204 = load %struct.page*, %struct.page** %25, align 8
  %205 = call i32 @f2fs_put_page(%struct.page* %204, i32 1)
  %206 = load %struct.inode*, %struct.inode** %10, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %19, align 8
  %209 = add i64 %207, %208
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* %19, align 8
  %212 = add i64 %210, %211
  %213 = add i64 %212, 1
  %214 = call i32 @f2fs_truncate_hole(%struct.inode* %206, i64 %209, i64 %213)
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %196
  %218 = load i32, i32* %20, align 4
  store i32 %218, i32* %9, align 4
  br label %224

219:                                              ; preds = %196
  %220 = load i64, i64* %19, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %19, align 8
  br label %222

222:                                              ; preds = %219, %168
  br label %29

223:                                              ; preds = %29
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %217, %191, %179, %78, %69
  %225 = load i32, i32* %9, align 4
  ret i32 %225
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i32 @datablock_addr(i32, i32, i64) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_i_blocks_write(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @f2fs_replace_block(%struct.f2fs_sb_info*, %struct.dnode_of_data*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i64) #1

declare dso_local %struct.page* @f2fs_get_lock_data_page(%struct.inode*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.page* @f2fs_get_new_data_page(%struct.inode*, i32*, i64, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_copy_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_truncate_hole(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
