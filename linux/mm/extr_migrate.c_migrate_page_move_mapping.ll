; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_move_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_move_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32, i32 }
%struct.zone = type { i32 }

@xas = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@NR_SHMEM = common dso_local global i32 0, align 4
@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migrate_page_move_mapping(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zone*, align 8
  %11 = alloca %struct.zone*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @xas, align 4
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = call i32 @page_index(%struct.page* %18)
  %20 = call i32 @XA_STATE(i32 %15, i32* %17, i32 %19)
  %21 = load %struct.address_space*, %struct.address_space** %6, align 8
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i32 @expected_page_refs(%struct.address_space* %21, %struct.page* %22)
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = icmp ne %struct.address_space* %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %4
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @page_count(%struct.page* %29)
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %217

36:                                               ; preds = %28
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = call i64 @PageSwapBacked(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @__SetPageSwapBacked(%struct.page* %51)
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %217

55:                                               ; preds = %4
  %56 = load %struct.page*, %struct.page** %8, align 8
  %57 = call %struct.zone* @page_zone(%struct.page* %56)
  store %struct.zone* %57, %struct.zone** %10, align 8
  %58 = load %struct.page*, %struct.page** %7, align 8
  %59 = call %struct.zone* @page_zone(%struct.page* %58)
  store %struct.zone* %59, %struct.zone** %11, align 8
  %60 = call i32 @xas_lock_irq(i32* @xas)
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = call i32 @page_count(%struct.page* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = call %struct.page* @xas_load(i32* @xas)
  %67 = load %struct.page*, %struct.page** %8, align 8
  %68 = icmp ne %struct.page* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %55
  %70 = call i32 @xas_unlock_irq(i32* @xas)
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %217

73:                                               ; preds = %65
  %74 = load %struct.page*, %struct.page** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @page_ref_freeze(%struct.page* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = call i32 @xas_unlock_irq(i32* @xas)
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %217

82:                                               ; preds = %73
  %83 = load %struct.page*, %struct.page** %8, align 8
  %84 = getelementptr inbounds %struct.page, %struct.page* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.page*, %struct.page** %7, align 8
  %92 = getelementptr inbounds %struct.page, %struct.page* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.page*, %struct.page** %7, align 8
  %94 = load %struct.page*, %struct.page** %8, align 8
  %95 = call i64 @hpage_nr_pages(%struct.page* %94)
  %96 = call i32 @page_ref_add(%struct.page* %93, i64 %95)
  %97 = load %struct.page*, %struct.page** %8, align 8
  %98 = call i64 @PageSwapBacked(%struct.page* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %82
  %101 = load %struct.page*, %struct.page** %7, align 8
  %102 = call i32 @__SetPageSwapBacked(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %8, align 8
  %104 = call i64 @PageSwapCache(%struct.page* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.page*, %struct.page** %7, align 8
  %108 = call i32 @SetPageSwapCache(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %7, align 8
  %110 = load %struct.page*, %struct.page** %8, align 8
  %111 = call i32 @page_private(%struct.page* %110)
  %112 = call i32 @set_page_private(%struct.page* %109, i32 %111)
  br label %113

113:                                              ; preds = %106, %100
  br label %119

114:                                              ; preds = %82
  %115 = load %struct.page*, %struct.page** %8, align 8
  %116 = call i64 @PageSwapCache(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %8, align 8
  %118 = call i32 @VM_BUG_ON_PAGE(i64 %116, %struct.page* %117)
  br label %119

119:                                              ; preds = %114, %113
  %120 = load %struct.page*, %struct.page** %8, align 8
  %121 = call i32 @PageDirty(%struct.page* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.page*, %struct.page** %8, align 8
  %126 = call i32 @ClearPageDirty(%struct.page* %125)
  %127 = load %struct.page*, %struct.page** %7, align 8
  %128 = call i32 @SetPageDirty(%struct.page* %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.page*, %struct.page** %7, align 8
  %131 = call i32 @xas_store(i32* @xas, %struct.page* %130)
  %132 = load %struct.page*, %struct.page** %8, align 8
  %133 = call i64 @PageTransHuge(%struct.page* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %144, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @HPAGE_PMD_NR, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = call i32 @xas_next(i32* @xas)
  %142 = load %struct.page*, %struct.page** %7, align 8
  %143 = call i32 @xas_store(i32* @xas, %struct.page* %142)
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %136

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %129
  %149 = load %struct.page*, %struct.page** %8, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.page*, %struct.page** %8, align 8
  %153 = call i64 @hpage_nr_pages(%struct.page* %152)
  %154 = sub nsw i64 %151, %153
  %155 = call i32 @page_ref_unfreeze(%struct.page* %149, i64 %154)
  %156 = call i32 @xas_unlock(i32* @xas)
  %157 = load %struct.zone*, %struct.zone** %11, align 8
  %158 = load %struct.zone*, %struct.zone** %10, align 8
  %159 = icmp ne %struct.zone* %157, %158
  br i1 %159, label %160, label %214

160:                                              ; preds = %148
  %161 = load %struct.zone*, %struct.zone** %10, align 8
  %162 = getelementptr inbounds %struct.zone, %struct.zone* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NR_FILE_PAGES, align 4
  %165 = call i32 @__dec_node_state(i32 %163, i32 %164)
  %166 = load %struct.zone*, %struct.zone** %11, align 8
  %167 = getelementptr inbounds %struct.zone, %struct.zone* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NR_FILE_PAGES, align 4
  %170 = call i32 @__inc_node_state(i32 %168, i32 %169)
  %171 = load %struct.page*, %struct.page** %8, align 8
  %172 = call i64 @PageSwapBacked(%struct.page* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %160
  %175 = load %struct.page*, %struct.page** %8, align 8
  %176 = call i64 @PageSwapCache(%struct.page* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = load %struct.zone*, %struct.zone** %10, align 8
  %180 = getelementptr inbounds %struct.zone, %struct.zone* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @NR_SHMEM, align 4
  %183 = call i32 @__dec_node_state(i32 %181, i32 %182)
  %184 = load %struct.zone*, %struct.zone** %11, align 8
  %185 = getelementptr inbounds %struct.zone, %struct.zone* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NR_SHMEM, align 4
  %188 = call i32 @__inc_node_state(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %178, %174, %160
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %189
  %193 = load %struct.address_space*, %struct.address_space** %6, align 8
  %194 = call i64 @mapping_cap_account_dirty(%struct.address_space* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %192
  %197 = load %struct.zone*, %struct.zone** %10, align 8
  %198 = getelementptr inbounds %struct.zone, %struct.zone* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @NR_FILE_DIRTY, align 4
  %201 = call i32 @__dec_node_state(i32 %199, i32 %200)
  %202 = load %struct.zone*, %struct.zone** %10, align 8
  %203 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %204 = call i32 @__dec_zone_state(%struct.zone* %202, i32 %203)
  %205 = load %struct.zone*, %struct.zone** %11, align 8
  %206 = getelementptr inbounds %struct.zone, %struct.zone* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @NR_FILE_DIRTY, align 4
  %209 = call i32 @__inc_node_state(i32 %207, i32 %208)
  %210 = load %struct.zone*, %struct.zone** %11, align 8
  %211 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %212 = call i32 @__inc_zone_state(%struct.zone* %210, i32 %211)
  br label %213

213:                                              ; preds = %196, %192, %189
  br label %214

214:                                              ; preds = %213, %148
  %215 = call i32 (...) @local_irq_enable()
  %216 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %214, %78, %69, %53, %33
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @expected_page_refs(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__SetPageSwapBacked(%struct.page*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @xas_lock_irq(i32*) #1

declare dso_local %struct.page* @xas_load(i32*) #1

declare dso_local i32 @xas_unlock_irq(i32*) #1

declare dso_local i32 @page_ref_freeze(%struct.page*, i32) #1

declare dso_local i32 @page_ref_add(%struct.page*, i64) #1

declare dso_local i64 @hpage_nr_pages(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @SetPageSwapCache(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i64, %struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @xas_store(i32*, %struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @xas_next(i32*) #1

declare dso_local i32 @page_ref_unfreeze(%struct.page*, i64) #1

declare dso_local i32 @xas_unlock(i32*) #1

declare dso_local i32 @__dec_node_state(i32, i32) #1

declare dso_local i32 @__inc_node_state(i32, i32) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i32 @__dec_zone_state(%struct.zone*, i32) #1

declare dso_local i32 @__inc_zone_state(%struct.zone*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
