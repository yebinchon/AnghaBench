; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c___add_to_page_cache_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c___add_to_page_cache_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { %struct.address_space*, i32 }
%struct.address_space = type { i32, i32, i32 }
%struct.mem_cgroup = type { i32 }

@xas = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.address_space*, i32, i32, i8**)* @__add_to_page_cache_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_to_page_cache_locked(%struct.page* %0, %struct.address_space* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mem_cgroup*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.address_space* %1, %struct.address_space** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %16 = load i32, i32* @xas, align 4
  %17 = load %struct.address_space*, %struct.address_space** %8, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 2
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @XA_STATE(i32 %16, i32* %18, i32 %19)
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = call i32 @PageHuge(%struct.page* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @PageLocked(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @VM_BUG_ON_PAGE(i32 %27, %struct.page* %28)
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @PageSwapBacked(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @VM_BUG_ON_PAGE(i32 %31, %struct.page* %32)
  %34 = load %struct.address_space*, %struct.address_space** %8, align 8
  %35 = call i32 @mapping_set_update(i32* @xas, %struct.address_space* %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %5
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mem_cgroup_try_charge(%struct.page* %39, i32 %42, i32 %43, %struct.mem_cgroup** %13, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %140

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %5
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @get_page(%struct.page* %51)
  %53 = load %struct.address_space*, %struct.address_space** %8, align 8
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  store %struct.address_space* %53, %struct.address_space** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %107, %50
  %60 = call i32 @xas_lock_irq(i32* @xas)
  %61 = call i8* @xas_load(i32* @xas)
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %15, align 8
  %66 = call i64 @xa_is_value(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @EEXIST, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @xas_set_err(i32* @xas, i32 %70)
  br label %72

72:                                               ; preds = %68, %64, %59
  %73 = load %struct.page*, %struct.page** %7, align 8
  %74 = call i32 @xas_store(i32* @xas, %struct.page* %73)
  %75 = call i32 @xas_error(i32* @xas)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %105

78:                                               ; preds = %72
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @xa_is_value(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.address_space*, %struct.address_space** %8, align 8
  %84 = getelementptr inbounds %struct.address_space, %struct.address_space* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load i8**, i8*** %11, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %15, align 8
  %91 = load i8**, i8*** %11, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.address_space*, %struct.address_space** %8, align 8
  %95 = getelementptr inbounds %struct.address_space, %struct.address_space* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load %struct.page*, %struct.page** %7, align 8
  %102 = load i32, i32* @NR_FILE_PAGES, align 4
  %103 = call i32 @__inc_node_page_state(%struct.page* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  br label %105

105:                                              ; preds = %104, %77
  %106 = call i32 @xas_unlock_irq(i32* @xas)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %110 = and i32 %108, %109
  %111 = call i64 @xas_nomem(i32* @xas, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %59, label %113

113:                                              ; preds = %107
  %114 = call i32 @xas_error(i32* @xas)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load %struct.page*, %struct.page** %7, align 8
  %122 = load %struct.mem_cgroup*, %struct.mem_cgroup** %13, align 8
  %123 = call i32 @mem_cgroup_commit_charge(%struct.page* %121, %struct.mem_cgroup* %122, i32 0, i32 0)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.page*, %struct.page** %7, align 8
  %126 = call i32 @trace_mm_filemap_add_to_page_cache(%struct.page* %125)
  store i32 0, i32* %6, align 4
  br label %140

127:                                              ; preds = %116
  %128 = load %struct.page*, %struct.page** %7, align 8
  %129 = getelementptr inbounds %struct.page, %struct.page* %128, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.page*, %struct.page** %7, align 8
  %134 = load %struct.mem_cgroup*, %struct.mem_cgroup** %13, align 8
  %135 = call i32 @mem_cgroup_cancel_charge(%struct.page* %133, %struct.mem_cgroup* %134, i32 0)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.page*, %struct.page** %7, align 8
  %138 = call i32 @put_page(%struct.page* %137)
  %139 = call i32 @xas_error(i32* @xas)
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %124, %47
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @mapping_set_update(i32*, %struct.address_space*) #1

declare dso_local i32 @mem_cgroup_try_charge(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @xas_lock_irq(i32*) #1

declare dso_local i8* @xas_load(i32*) #1

declare dso_local i64 @xa_is_value(i8*) #1

declare dso_local i32 @xas_set_err(i32*, i32) #1

declare dso_local i32 @xas_store(i32*, %struct.page*) #1

declare dso_local i32 @xas_error(i32*) #1

declare dso_local i32 @__inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @xas_unlock_irq(i32*) #1

declare dso_local i64 @xas_nomem(i32*, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @trace_mm_filemap_add_to_page_cache(%struct.page*) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
