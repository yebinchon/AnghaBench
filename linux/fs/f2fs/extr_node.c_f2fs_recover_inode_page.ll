; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_inode_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_inode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.node_info = type { i64, i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@F2FS_INLINE_XATTR = common dso_local global i32 0, align 4
@F2FS_EXTRA_ATTR = common dso_local global i32 0, align 4
@i_inline_xattr_size = common dso_local global i32 0, align 4
@i_projid = common dso_local global i32 0, align 4
@i_crtime_nsec = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_recover_inode_page(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_inode*, align 8
  %7 = alloca %struct.f2fs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node_info, align 8
  %10 = alloca %struct.node_info, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @ino_of_node(%struct.page* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %15, i32 %16, %struct.node_info* %9)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %3, align 4
  br label %190

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.node_info, %struct.node_info* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NULL_ADDR, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %190

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %41, %33
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %36 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.page* @f2fs_grab_cache_page(i32 %36, i32 %37, i32 0)
  store %struct.page* %38, %struct.page** %11, align 8
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @BLK_RW_ASYNC, align 4
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %43, 50
  %45 = call i32 @congestion_wait(i32 %42, i32 %44)
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @remove_free_nid(%struct.f2fs_sb_info* %47, i32 %48)
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = call i32 @PageUptodate(%struct.page* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load %struct.page*, %struct.page** %11, align 8
  %55 = call i32 @SetPageUptodate(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.page*, %struct.page** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @fill_node_footer(%struct.page* %57, i32 %58, i32 %59, i32 0, i32 1)
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = call i32 @set_cold_node(%struct.page* %61, i32 0)
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %63)
  store %struct.f2fs_inode* %64, %struct.f2fs_inode** %6, align 8
  %65 = load %struct.page*, %struct.page** %11, align 8
  %66 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %65)
  store %struct.f2fs_inode* %66, %struct.f2fs_inode** %7, align 8
  %67 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %68 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %69 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %70 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %69, i32 0, i32 10
  %71 = ptrtoint i32* %70 to i64
  %72 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %73 = ptrtoint %struct.f2fs_inode* %72 to i64
  %74 = sub i64 %71, %73
  %75 = call i32 @memcpy(%struct.f2fs_inode* %67, %struct.f2fs_inode* %68, i64 %74)
  %76 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %77 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = call i32 @cpu_to_le64(i32 1)
  %79 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %80 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = call i32 @cpu_to_le32(i32 1)
  %82 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %83 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %85 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %87 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @F2FS_INLINE_XATTR, align 4
  %90 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %94 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %96 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %169

101:                                              ; preds = %56
  %102 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %103 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %106 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %108 = call i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %101
  %111 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %112 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %113 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = load i32, i32* @i_inline_xattr_size, align 4
  %117 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %111, i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %121 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %124 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %110, %101
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %127 = call i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %131 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %132 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = load i32, i32* @i_projid, align 4
  %136 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %130, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %140 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %143 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %129, %125
  %145 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %146 = call i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %150 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %151 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le16_to_cpu(i32 %152)
  %154 = load i32, i32* @i_crtime_nsec, align 4
  %155 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %149, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %148
  %158 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %159 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %162 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %164 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %167 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %157, %148, %144
  br label %169

169:                                              ; preds = %168, %56
  %170 = bitcast %struct.node_info* %10 to i8*
  %171 = bitcast %struct.node_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  %172 = load i32, i32* %8, align 4
  %173 = getelementptr inbounds %struct.node_info, %struct.node_info* %10, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %175 = call i32 @inc_valid_node_count(%struct.f2fs_sb_info* %174, i32* null, i32 1)
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = call i32 @WARN_ON(i32 1)
  br label %180

180:                                              ; preds = %178, %169
  %181 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %182 = load i32, i32* @NEW_ADDR, align 4
  %183 = call i32 @set_node_addr(%struct.f2fs_sb_info* %181, %struct.node_info* %10, i32 %182, i32 0)
  %184 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %185 = call i32 @inc_valid_inode_count(%struct.f2fs_sb_info* %184)
  %186 = load %struct.page*, %struct.page** %11, align 8
  %187 = call i32 @set_page_dirty(%struct.page* %186)
  %188 = load %struct.page*, %struct.page** %11, align 8
  %189 = call i32 @f2fs_put_page(%struct.page* %188, i32 1)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %180, %30, %20
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i32, i32, i32) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i32 @remove_free_nid(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @fill_node_footer(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @set_cold_node(%struct.page*, i32) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i32 @memcpy(%struct.f2fs_inode*, %struct.f2fs_inode*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inc_valid_node_count(%struct.f2fs_sb_info*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_node_addr(%struct.f2fs_sb_info*, %struct.node_info*, i32, i32) #1

declare dso_local i32 @inc_valid_inode_count(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
