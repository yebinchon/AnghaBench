; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_getbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_getbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.buffer_head* }
%struct.gfs2_glock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_4__, %struct.address_space }
%struct.TYPE_4__ = type { i32, i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_ACCESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %16 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %15)
  store %struct.address_space* %16, %struct.address_space** %8, align 8
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %19, align 8
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %9, align 8
  %21 = load %struct.address_space*, %struct.address_space** %8, align 8
  %22 = icmp eq %struct.address_space* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 2
  store %struct.address_space* %25, %struct.address_space** %8, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %27, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %12, align 4
  %35 = lshr i32 %33, %34
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 %39, %41
  %43 = sub i64 %38, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %55, %47
  %49 = load %struct.address_space*, %struct.address_space** %8, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call %struct.page* @grab_cache_page(%struct.address_space* %49, i64 %50)
  store %struct.page* %51, %struct.page** %10, align 8
  %52 = load %struct.page*, %struct.page** %10, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @yield()
  br label %48

57:                                               ; preds = %54
  br label %69

58:                                               ; preds = %26
  %59 = load %struct.address_space*, %struct.address_space** %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* @FGP_LOCK, align 4
  %62 = load i32, i32* @FGP_ACCESSED, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.page* @find_get_page_flags(%struct.address_space* %59, i64 %60, i32 %63)
  store %struct.page* %64, %struct.page** %10, align 8
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %111

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.page*, %struct.page** %10, align 8
  %71 = call i32 @page_has_buffers(%struct.page* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @create_empty_buffers(%struct.page* %74, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %73, %69
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = call %struct.buffer_head* @page_buffers(%struct.page* %81)
  store %struct.buffer_head* %82, %struct.buffer_head** %11, align 8
  br label %83

83:                                               ; preds = %88, %80
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, -1
  store i32 %85, i32* %14, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load %struct.buffer_head*, %struct.buffer_head** %90, align 8
  store %struct.buffer_head* %91, %struct.buffer_head** %11, align 8
  br label %83

92:                                               ; preds = %83
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @get_bh(%struct.buffer_head* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = call i32 @buffer_mapped(%struct.buffer_head* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %92
  %99 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %101 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @map_bh(%struct.buffer_head* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %92
  %106 = load %struct.page*, %struct.page** %10, align 8
  %107 = call i32 @unlock_page(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %10, align 8
  %109 = call i32 @put_page(%struct.page* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %110, %struct.buffer_head** %4, align 8
  br label %111

111:                                              ; preds = %105, %67
  %112 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %112
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i32 @yield(...) #1

declare dso_local %struct.page* @find_get_page_flags(%struct.address_space*, i64, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
