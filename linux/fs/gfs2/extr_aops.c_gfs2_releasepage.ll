; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, %struct.gfs2_bufdata*, i32 }
%struct.gfs2_bufdata = type { %struct.buffer_head*, i32, i64 }

@gfs2_bufdata_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = call %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @page_has_buffers(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %22 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call %struct.buffer_head* @page_buffers(%struct.page* %26)
  store %struct.buffer_head* %27, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %9, align 8
  br label %28

28:                                               ; preds = %60, %20
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %114

34:                                               ; preds = %28
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %36, align 8
  store %struct.gfs2_bufdata* %37, %struct.gfs2_bufdata** %10, align 8
  %38 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %39 = icmp ne %struct.gfs2_bufdata* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %42 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %114

46:                                               ; preds = %40, %34
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i64 @buffer_dirty(%struct.buffer_head* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i32 @buffer_pinned(%struct.buffer_head* %51)
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %46
  br label %114

56:                                               ; preds = %50
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %8, align 8
  br label %60

60:                                               ; preds = %56
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = icmp ne %struct.buffer_head* %61, %62
  br i1 %63, label %28, label %64

64:                                               ; preds = %60
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call %struct.buffer_head* @page_buffers(%struct.page* %68)
  store %struct.buffer_head* %69, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %69, %struct.buffer_head** %9, align 8
  br label %70

70:                                               ; preds = %105, %64
  %71 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %72, align 8
  store %struct.gfs2_bufdata* %73, %struct.gfs2_bufdata** %10, align 8
  %74 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %75 = icmp ne %struct.gfs2_bufdata* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %78 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %79 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %78, i32 0, i32 0
  %80 = load %struct.buffer_head*, %struct.buffer_head** %79, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = icmp eq %struct.buffer_head* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %77, i32 %83)
  %85 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %86 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %85, i32 0, i32 1
  %87 = call i32 @list_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %76
  %90 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %91 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %90, i32 0, i32 1
  %92 = call i32 @list_del_init(i32* %91)
  br label %93

93:                                               ; preds = %89, %76
  %94 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %95 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %94, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %95, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %97 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %96, i32 0, i32 1
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %97, align 8
  %98 = load i32, i32* @gfs2_bufdata_cachep, align 4
  %99 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %100 = call i32 @kmem_cache_free(i32 %98, %struct.gfs2_bufdata* %99)
  br label %101

101:                                              ; preds = %93, %70
  %102 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load %struct.buffer_head*, %struct.buffer_head** %103, align 8
  store %struct.buffer_head* %104, %struct.buffer_head** %8, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = icmp ne %struct.buffer_head* %106, %107
  br i1 %108, label %70, label %109

109:                                              ; preds = %105
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %111 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %110)
  %112 = load %struct.page*, %struct.page** %4, align 8
  %113 = call i32 @try_to_free_buffers(%struct.page* %112)
  store i32 %113, i32* %3, align 4
  br label %120

114:                                              ; preds = %55, %45, %33
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %116 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %119 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %109, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_bufdata*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
