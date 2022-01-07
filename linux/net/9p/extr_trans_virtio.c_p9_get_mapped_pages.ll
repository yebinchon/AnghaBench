; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_get_mapped_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_get_mapped_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_chan = type { i64 }
%struct.page = type { i32 }
%struct.iov_iter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@vp_pinned = common dso_local global i32 0, align 4
@vp_wq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_chan*, %struct.page***, %struct.iov_iter*, i32, i64*, i32*)* @p9_get_mapped_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_get_mapped_pages(%struct.virtio_chan* %0, %struct.page*** %1, %struct.iov_iter* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_chan*, align 8
  %9 = alloca %struct.page***, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.virtio_chan* %0, %struct.virtio_chan** %8, align 8
  store %struct.page*** %1, %struct.page**** %9, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %21 = call i32 @iov_iter_count(%struct.iov_iter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %167

24:                                               ; preds = %6
  %25 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %26 = call i32 @iov_iter_is_kvec(%struct.iov_iter* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  %29 = call i64 @atomic_read(i32* @vp_pinned)
  %30 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %31 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32, i32* @vp_wq, align 4
  %36 = call i64 @atomic_read(i32* @vp_pinned)
  %37 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %38 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @wait_event_killable(i32 %35, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %167

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %52 = load %struct.page***, %struct.page**** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64*, i64** %12, align 8
  %55 = call i32 @iov_iter_get_pages_alloc(%struct.iov_iter* %51, %struct.page*** %52, i32 %53, i64* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %7, align 4
  br label %167

60:                                               ; preds = %50
  %61 = load i32*, i32** %13, align 8
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %63, %65
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = call i64 @DIV_ROUND_UP(i64 %66, i64 %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @atomic_add(i32 %70, i32* @vp_pinned)
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %7, align 4
  br label %167

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73, %91
  %75 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %76 = call i64 @iov_iter_single_seg_count(%struct.iov_iter* %75)
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i64 @likely(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %82 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %87 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %85, i64 %89
  store i8* %90, i8** %19, align 8
  br label %94

91:                                               ; preds = %74
  %92 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %93 = call i32 @iov_iter_advance(%struct.iov_iter* %92, i32 0)
  br label %74

94:                                               ; preds = %80
  %95 = load i64, i64* %18, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i8*, i8** %19, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load i64, i64* %18, align 8
  %106 = add i64 %104, %105
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = call i64 @DIV_ROUND_UP(i64 %106, i64 %107)
  %109 = load i8*, i8** %19, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = udiv i64 %110, %111
  %113 = sub i64 %108, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @GFP_NOFS, align 4
  %117 = call %struct.page** @kmalloc_array(i32 %115, i32 8, i32 %116)
  %118 = load %struct.page***, %struct.page**** %9, align 8
  store %struct.page** %117, %struct.page*** %118, align 8
  %119 = load %struct.page***, %struct.page**** %9, align 8
  %120 = load %struct.page**, %struct.page*** %119, align 8
  %121 = icmp ne %struct.page** %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %102
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %167

125:                                              ; preds = %102
  %126 = load i32*, i32** %13, align 8
  store i32 0, i32* %126, align 4
  %127 = load i8*, i8** %19, align 8
  %128 = call i64 @offset_in_page(i8* %127)
  %129 = load i64*, i64** %12, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = sub i64 0, %128
  %132 = getelementptr i8, i8* %130, i64 %131
  store i8* %132, i8** %19, align 8
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %161, %125
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %133
  %138 = load i8*, i8** %19, align 8
  %139 = call i64 @is_vmalloc_addr(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8*, i8** %19, align 8
  %143 = call %struct.page* @vmalloc_to_page(i8* %142)
  %144 = load %struct.page***, %struct.page**** %9, align 8
  %145 = load %struct.page**, %struct.page*** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.page*, %struct.page** %145, i64 %147
  store %struct.page* %143, %struct.page** %148, align 8
  br label %157

149:                                              ; preds = %137
  %150 = load i8*, i8** %19, align 8
  %151 = call %struct.page* @kmap_to_page(i8* %150)
  %152 = load %struct.page***, %struct.page**** %9, align 8
  %153 = load %struct.page**, %struct.page*** %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.page*, %struct.page** %153, i64 %155
  store %struct.page* %151, %struct.page** %156, align 8
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i64, i64* @PAGE_SIZE, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = getelementptr i8, i8* %159, i64 %158
  store i8* %160, i8** %19, align 8
  br label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  br label %133

164:                                              ; preds = %133
  %165 = load i64, i64* %18, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %164, %122, %60, %58, %47, %23
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_is_kvec(%struct.iov_iter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @iov_iter_get_pages_alloc(%struct.iov_iter*, %struct.page***, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @kmap_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
