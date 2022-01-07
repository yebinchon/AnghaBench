; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c___swap_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c___swap_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }
%struct.bio = type { i32 }
%struct.swap_info_struct = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.kiocb*, %struct.iov_iter*)* }
%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }

@SWP_FS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PSWPOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Write error on dio swapfile (%llu)\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__swap_writepage(%struct.page* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.swap_info_struct*, align 8
  %11 = alloca %struct.kiocb, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca %struct.bio_vec, align 8
  %15 = alloca %struct.iov_iter, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call %struct.swap_info_struct* @page_swap_info(%struct.page* %16)
  store %struct.swap_info_struct* %17, %struct.swap_info_struct** %10, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @PageSwapCache(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i32 @VM_BUG_ON_PAGE(i32 %22, %struct.page* %23)
  %25 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %26 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SWP_FS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %3
  %32 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %33 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %32, i32 0, i32 2
  %34 = load %struct.file*, %struct.file** %33, align 8
  store %struct.file* %34, %struct.file** %12, align 8
  %35 = load %struct.file*, %struct.file** %12, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.address_space*, %struct.address_space** %36, align 8
  store %struct.address_space* %37, %struct.address_space** %13, align 8
  %38 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 0
  %39 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %14, i32 0, i32 2
  %42 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %42, %struct.page** %41, align 8
  %43 = load i32, i32* @WRITE, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @iov_iter_bvec(%struct.iov_iter* %15, i32 %43, %struct.bio_vec* %14, i32 1, i32 %44)
  %46 = load %struct.file*, %struct.file** %12, align 8
  %47 = call i32 @init_sync_kiocb(%struct.kiocb* %11, %struct.file* %46)
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i32 @page_file_offset(%struct.page* %48)
  %50 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = call i32 @set_page_writeback(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load %struct.address_space*, %struct.address_space** %13, align 8
  %56 = getelementptr inbounds %struct.address_space, %struct.address_space* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, %struct.iov_iter*)** %58, align 8
  %60 = call i32 %59(%struct.kiocb* %11, %struct.iov_iter* %15)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %31
  %65 = load i32, i32* @PSWPOUT, align 4
  %66 = call i32 @count_vm_event(i32 %65)
  store i32 0, i32* %9, align 4
  br label %75

67:                                               ; preds = %31
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call i32 @set_page_dirty(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @ClearPageReclaim(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @page_file_offset(%struct.page* %72)
  %74 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i32 @end_page_writeback(%struct.page* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %129

79:                                               ; preds = %3
  %80 = load %struct.swap_info_struct*, %struct.swap_info_struct** %10, align 8
  %81 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @swap_page_sector(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %87 = call i32 @bdev_write_page(i32 %82, i32 %84, %struct.page* %85, %struct.writeback_control* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = load %struct.page*, %struct.page** %5, align 8
  %92 = call i32 @count_swpout_vm_event(%struct.page* %91)
  store i32 0, i32* %4, align 4
  br label %129

93:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  %94 = load i32, i32* @GFP_NOIO, align 4
  %95 = load %struct.page*, %struct.page** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call %struct.bio* @get_swap_bio(i32 %94, %struct.page* %95, i32 %96)
  store %struct.bio* %97, %struct.bio** %8, align 8
  %98 = load %struct.bio*, %struct.bio** %8, align 8
  %99 = icmp eq %struct.bio* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i32 @set_page_dirty(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %5, align 8
  %104 = call i32 @unlock_page(%struct.page* %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %127

107:                                              ; preds = %93
  %108 = load i32, i32* @REQ_OP_WRITE, align 4
  %109 = load i32, i32* @REQ_SWAP, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %112 = call i32 @wbc_to_write_flags(%struct.writeback_control* %111)
  %113 = or i32 %110, %112
  %114 = load %struct.bio*, %struct.bio** %8, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.bio*, %struct.bio** %8, align 8
  %117 = load %struct.page*, %struct.page** %5, align 8
  %118 = call i32 @bio_associate_blkg_from_page(%struct.bio* %116, %struct.page* %117)
  %119 = load %struct.page*, %struct.page** %5, align 8
  %120 = call i32 @count_swpout_vm_event(%struct.page* %119)
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i32 @set_page_writeback(%struct.page* %121)
  %123 = load %struct.page*, %struct.page** %5, align 8
  %124 = call i32 @unlock_page(%struct.page* %123)
  %125 = load %struct.bio*, %struct.bio** %8, align 8
  %126 = call i32 @submit_bio(%struct.bio* %125)
  br label %127

127:                                              ; preds = %107, %100
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %90, %75
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.swap_info_struct* @page_swap_info(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @init_sync_kiocb(%struct.kiocb*, %struct.file*) #1

declare dso_local i32 @page_file_offset(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @ClearPageReclaim(%struct.page*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @bdev_write_page(i32, i32, %struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @swap_page_sector(%struct.page*) #1

declare dso_local i32 @count_swpout_vm_event(%struct.page*) #1

declare dso_local %struct.bio* @get_swap_bio(i32, %struct.page*, i32) #1

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #1

declare dso_local i32 @bio_associate_blkg_from_page(%struct.bio*, %struct.page*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
