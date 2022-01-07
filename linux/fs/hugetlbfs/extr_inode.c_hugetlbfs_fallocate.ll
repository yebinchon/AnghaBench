; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i64, i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.hugetlbfs_inode_info = type { i32 }
%struct.hstate = type { i32 }
%struct.vm_area_struct = type { i32, %struct.file* }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@F_SEAL_GROW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_HUGETLB = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@hugetlb_fault_mutex_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @hugetlbfs_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugetlbfs_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.hugetlbfs_inode_info*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.hstate*, align 8
  %14 = alloca %struct.vm_area_struct, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.page*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = call %struct.inode* @file_inode(%struct.file* %26)
  store %struct.inode* %27, %struct.inode** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode* %28)
  store %struct.hugetlbfs_inode_info* %29, %struct.hugetlbfs_inode_info** %11, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load %struct.address_space*, %struct.address_space** %31, align 8
  store %struct.address_space* %32, %struct.address_space** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call %struct.hstate* @hstate_inode(%struct.inode* %33)
  store %struct.hstate* %34, %struct.hstate** %13, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.mm_struct*, %struct.mm_struct** %36, align 8
  store %struct.mm_struct* %37, %struct.mm_struct** %15, align 8
  %38 = load %struct.hstate*, %struct.hstate** %13, align 8
  %39 = call i64 @huge_page_size(%struct.hstate* %38)
  store i64 %39, i64* %16, align 8
  %40 = load %struct.hstate*, %struct.hstate** %13, align 8
  %41 = call i64 @huge_page_shift(%struct.hstate* %40)
  store i64 %41, i64* %17, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %44 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i64, i64* @EOPNOTSUPP, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %233

52:                                               ; preds = %4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @hugetlbfs_punch_hole(%struct.inode* %58, i64 %59, i64 %60)
  store i64 %61, i64* %5, align 8
  br label %233

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %17, align 8
  %65 = lshr i64 %63, %64
  store i64 %65, i64* %18, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %16, align 8
  %70 = add i64 %68, %69
  %71 = sub i64 %70, 1
  %72 = load i64, i64* %17, align 8
  %73 = lshr i64 %71, %72
  store i64 %73, i64* %20, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call i32 @inode_lock(%struct.inode* %74)
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @inode_newsize_ok(%struct.inode* %76, i64 %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %62
  br label %228

84:                                               ; preds = %62
  %85 = load %struct.hugetlbfs_inode_info*, %struct.hugetlbfs_inode_info** %11, align 8
  %86 = getelementptr inbounds %struct.hugetlbfs_inode_info, %struct.hugetlbfs_inode_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @F_SEAL_GROW, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ugt i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %21, align 4
  br label %228

102:                                              ; preds = %91, %84
  %103 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %104 = call i32 @vma_init(%struct.vm_area_struct* %14, %struct.mm_struct* %103)
  %105 = load i32, i32* @VM_HUGETLB, align 4
  %106 = load i32, i32* @VM_MAYSHARE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @VM_SHARED, align 4
  %109 = or i32 %107, %108
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.file*, %struct.file** %6, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  store %struct.file* %111, %struct.file** %112, align 8
  %113 = load i64, i64* %18, align 8
  store i64 %113, i64* %19, align 8
  br label %114

114:                                              ; preds = %201, %102
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %20, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %204

118:                                              ; preds = %114
  store i32 0, i32* %25, align 4
  %119 = call i32 (...) @cond_resched()
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %121 = call i64 @signal_pending(%struct.TYPE_3__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINTR, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %21, align 4
  br label %204

126:                                              ; preds = %118
  %127 = load %struct.inode*, %struct.inode** %10, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @hugetlb_set_vma_policy(%struct.vm_area_struct* %14, %struct.inode* %127, i64 %128)
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %16, align 8
  %132 = mul i64 %130, %131
  store i64 %132, i64* %24, align 8
  %133 = load %struct.hstate*, %struct.hstate** %13, align 8
  %134 = load %struct.address_space*, %struct.address_space** %12, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i64, i64* %24, align 8
  %137 = call i64 @hugetlb_fault_mutex_hash(%struct.hstate* %133, %struct.address_space* %134, i64 %135, i64 %136)
  store i64 %137, i64* %22, align 8
  %138 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %139 = load i64, i64* %22, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.address_space*, %struct.address_space** %12, align 8
  %143 = load i64, i64* %19, align 8
  %144 = call %struct.page* @find_get_page(%struct.address_space* %142, i64 %143)
  store %struct.page* %144, %struct.page** %23, align 8
  %145 = load %struct.page*, %struct.page** %23, align 8
  %146 = icmp ne %struct.page* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %126
  %148 = load %struct.page*, %struct.page** %23, align 8
  %149 = call i32 @put_page(%struct.page* %148)
  %150 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %151 = load i64, i64* %22, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = call i32 @hugetlb_drop_vma_policy(%struct.vm_area_struct* %14)
  br label %201

155:                                              ; preds = %126
  %156 = load i64, i64* %24, align 8
  %157 = load i32, i32* %25, align 4
  %158 = call %struct.page* @alloc_huge_page(%struct.vm_area_struct* %14, i64 %156, i32 %157)
  store %struct.page* %158, %struct.page** %23, align 8
  %159 = call i32 @hugetlb_drop_vma_policy(%struct.vm_area_struct* %14)
  %160 = load %struct.page*, %struct.page** %23, align 8
  %161 = call i64 @IS_ERR(%struct.page* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %165 = load i64, i64* %22, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load %struct.page*, %struct.page** %23, align 8
  %169 = call i32 @PTR_ERR(%struct.page* %168)
  store i32 %169, i32* %21, align 4
  br label %228

170:                                              ; preds = %155
  %171 = load %struct.page*, %struct.page** %23, align 8
  %172 = load i64, i64* %24, align 8
  %173 = load %struct.hstate*, %struct.hstate** %13, align 8
  %174 = call i32 @pages_per_huge_page(%struct.hstate* %173)
  %175 = call i32 @clear_huge_page(%struct.page* %171, i64 %172, i32 %174)
  %176 = load %struct.page*, %struct.page** %23, align 8
  %177 = call i32 @__SetPageUptodate(%struct.page* %176)
  %178 = load %struct.page*, %struct.page** %23, align 8
  %179 = load %struct.address_space*, %struct.address_space** %12, align 8
  %180 = load i64, i64* %19, align 8
  %181 = call i32 @huge_add_to_page_cache(%struct.page* %178, %struct.address_space* %179, i64 %180)
  store i32 %181, i32* %21, align 4
  %182 = load i32, i32* %21, align 4
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %170
  %186 = load %struct.page*, %struct.page** %23, align 8
  %187 = call i32 @put_page(%struct.page* %186)
  %188 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %189 = load i64, i64* %22, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = call i32 @mutex_unlock(i32* %190)
  br label %228

192:                                              ; preds = %170
  %193 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %194 = load i64, i64* %22, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load %struct.page*, %struct.page** %23, align 8
  %198 = call i32 @unlock_page(%struct.page* %197)
  %199 = load %struct.page*, %struct.page** %23, align 8
  %200 = call i32 @put_page(%struct.page* %199)
  br label %201

201:                                              ; preds = %192, %147
  %202 = load i64, i64* %19, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %19, align 8
  br label %114

204:                                              ; preds = %123, %114
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %210, %211
  %213 = load %struct.inode*, %struct.inode** %10, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ugt i64 %212, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = load %struct.inode*, %struct.inode** %10, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load i64, i64* %9, align 8
  %221 = add i64 %219, %220
  %222 = call i32 @i_size_write(%struct.inode* %218, i64 %221)
  br label %223

223:                                              ; preds = %217, %209, %204
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = call i32 @current_time(%struct.inode* %224)
  %226 = load %struct.inode*, %struct.inode** %10, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %223, %185, %163, %99, %83
  %229 = load %struct.inode*, %struct.inode** %10, align 8
  %230 = call i32 @inode_unlock(%struct.inode* %229)
  %231 = load i32, i32* %21, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %5, align 8
  br label %233

233:                                              ; preds = %228, %57, %49
  %234 = load i64, i64* %5, align 8
  ret i64 %234
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode*) #1

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i64 @huge_page_shift(%struct.hstate*) #1

declare dso_local i64 @hugetlbfs_punch_hole(%struct.inode*, i64, i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @vma_init(%struct.vm_area_struct*, %struct.mm_struct*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @signal_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @hugetlb_set_vma_policy(%struct.vm_area_struct*, %struct.inode*, i64) #1

declare dso_local i64 @hugetlb_fault_mutex_hash(%struct.hstate*, %struct.address_space*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hugetlb_drop_vma_policy(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_huge_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @clear_huge_page(%struct.page*, i64, i32) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @huge_add_to_page_cache(%struct.page*, %struct.address_space*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
