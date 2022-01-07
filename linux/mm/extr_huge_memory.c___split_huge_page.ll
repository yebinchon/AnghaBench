; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___split_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.lruvec = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_9__ = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@CONFIG_SHMEM = common dso_local global i32 0, align 4
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.list_head*, i64, i64)* @__split_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__split_huge_page(%struct.page* %0, %struct.list_head* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.lruvec*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call %struct.page* @compound_head(%struct.page* %17)
  store %struct.page* %18, %struct.page** %9, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = call %struct.TYPE_10__* @page_pgdat(%struct.page* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  store %struct.address_space* null, %struct.address_space** %12, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %21, %struct.TYPE_10__* %22)
  store %struct.lruvec* %23, %struct.lruvec** %11, align 8
  %24 = load %struct.page*, %struct.page** %9, align 8
  %25 = call i32 @mem_cgroup_split_huge_fixup(%struct.page* %24)
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = call i64 @PageAnon(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %4
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i64 @PageSwapCache(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = call i32 @page_private(%struct.page* %35)
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @swp_offset(i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.address_space* @swap_address_space(i32 %41)
  store %struct.address_space* %42, %struct.address_space** %12, align 8
  %43 = load %struct.address_space*, %struct.address_space** %12, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = call i32 @xa_lock(i32* %44)
  br label %46

46:                                               ; preds = %33, %29, %4
  %47 = load i32, i32* @HPAGE_PMD_NR, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %135, %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp sge i32 %50, 1
  br i1 %51, label %52, label %138

52:                                               ; preds = %49
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.lruvec*, %struct.lruvec** %11, align 8
  %56 = load %struct.list_head*, %struct.list_head** %6, align 8
  %57 = call i32 @__split_huge_page_tail(%struct.page* %53, i32 %54, %struct.lruvec* %55, %struct.list_head* %56)
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page, %struct.page* %58, i64 %60
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %52
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.page, %struct.page* %67, i64 %69
  %71 = call i32 @ClearPageDirty(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page, %struct.page* %72, i64 %74
  %76 = call i32 @__delete_from_page_cache(%struct.page* %75, i32* null)
  %77 = load i32, i32* @CONFIG_SHMEM, align 4
  %78 = call i64 @IS_ENABLED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %66
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = call i64 @PageSwapBacked(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.page*, %struct.page** %9, align 8
  %86 = getelementptr inbounds %struct.page, %struct.page* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @shmem_uncharge(i32 %89, i32 1)
  br label %91

91:                                               ; preds = %84, %80, %66
  %92 = load %struct.page*, %struct.page** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.page, %struct.page* %92, i64 %94
  %96 = call i32 @put_page(%struct.page* %95)
  br label %134

97:                                               ; preds = %52
  %98 = load %struct.page*, %struct.page** %5, align 8
  %99 = call i64 @PageAnon(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = load %struct.page*, %struct.page** %9, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.page*, %struct.page** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.page, %struct.page* %106, i64 %108
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.page*, %struct.page** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.page, %struct.page* %112, i64 %114
  %116 = call i32 @__xa_store(i32* %105, i64 %111, %struct.page* %115, i32 0)
  br label %133

117:                                              ; preds = %97
  %118 = load %struct.address_space*, %struct.address_space** %12, align 8
  %119 = icmp ne %struct.address_space* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.address_space*, %struct.address_space** %12, align 8
  %122 = getelementptr inbounds %struct.address_space, %struct.address_space* %121, i32 0, i32 0
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %123, %125
  %127 = load %struct.page*, %struct.page** %9, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.page, %struct.page* %127, i64 %129
  %131 = call i32 @__xa_store(i32* %122, i64 %126, %struct.page* %130, i32 0)
  br label %132

132:                                              ; preds = %120, %117
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %91
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %14, align 4
  br label %49

138:                                              ; preds = %49
  %139 = load %struct.page*, %struct.page** %9, align 8
  %140 = call i32 @ClearPageCompound(%struct.page* %139)
  %141 = load %struct.page*, %struct.page** %9, align 8
  %142 = load i32, i32* @HPAGE_PMD_ORDER, align 4
  %143 = call i32 @split_page_owner(%struct.page* %141, i32 %142)
  %144 = load %struct.page*, %struct.page** %9, align 8
  %145 = call i64 @PageAnon(%struct.page* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %138
  %148 = load %struct.page*, %struct.page** %9, align 8
  %149 = call i64 @PageSwapCache(%struct.page* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load %struct.page*, %struct.page** %9, align 8
  %153 = call i32 @page_ref_add(%struct.page* %152, i32 2)
  %154 = load %struct.address_space*, %struct.address_space** %12, align 8
  %155 = getelementptr inbounds %struct.address_space, %struct.address_space* %154, i32 0, i32 0
  %156 = call i32 @xa_unlock(i32* %155)
  br label %160

157:                                              ; preds = %147
  %158 = load %struct.page*, %struct.page** %9, align 8
  %159 = call i32 @page_ref_inc(%struct.page* %158)
  br label %160

160:                                              ; preds = %157, %151
  br label %169

161:                                              ; preds = %138
  %162 = load %struct.page*, %struct.page** %9, align 8
  %163 = call i32 @page_ref_add(%struct.page* %162, i32 2)
  %164 = load %struct.page*, %struct.page** %9, align 8
  %165 = getelementptr inbounds %struct.page, %struct.page* %164, i32 0, i32 1
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = call i32 @xa_unlock(i32* %167)
  br label %169

169:                                              ; preds = %161, %160
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.page*, %struct.page** %9, align 8
  %175 = call i32 @remap_page(%struct.page* %174)
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %194, %169
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @HPAGE_PMD_NR, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %176
  %181 = load %struct.page*, %struct.page** %9, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.page, %struct.page* %181, i64 %183
  store %struct.page* %184, %struct.page** %16, align 8
  %185 = load %struct.page*, %struct.page** %16, align 8
  %186 = load %struct.page*, %struct.page** %5, align 8
  %187 = icmp eq %struct.page* %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %194

189:                                              ; preds = %180
  %190 = load %struct.page*, %struct.page** %16, align 8
  %191 = call i32 @unlock_page(%struct.page* %190)
  %192 = load %struct.page*, %struct.page** %16, align 8
  %193 = call i32 @put_page(%struct.page* %192)
  br label %194

194:                                              ; preds = %189, %188
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %176

197:                                              ; preds = %176
  ret void
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local %struct.TYPE_10__* @page_pgdat(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_10__*) #1

declare dso_local i32 @mem_cgroup_split_huge_fixup(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.address_space* @swap_address_space(i32) #1

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local i32 @__split_huge_page_tail(%struct.page*, i32, %struct.lruvec*, %struct.list_head*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @__delete_from_page_cache(%struct.page*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @shmem_uncharge(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__xa_store(i32*, i64, %struct.page*, i32) #1

declare dso_local i32 @ClearPageCompound(%struct.page*) #1

declare dso_local i32 @split_page_owner(%struct.page*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i32) #1

declare dso_local i32 @xa_unlock(i32*) #1

declare dso_local i32 @page_ref_inc(%struct.page*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @remap_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
