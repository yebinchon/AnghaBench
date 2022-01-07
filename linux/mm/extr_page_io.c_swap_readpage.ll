; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.bio = type { i32, i32, %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.swap_info_struct = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.page*)* }

@SWP_FS = common dso_local global i32 0, align 4
@PSWPIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@end_swap_bio_read = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_HIPRI = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_readpage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.swap_info_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gendisk*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call %struct.swap_info_struct* @page_swap_info(%struct.page* %13)
  store %struct.swap_info_struct* %14, %struct.swap_info_struct** %8, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @PageSwapCache(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ false, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @VM_BUG_ON_PAGE(i32 %24, %struct.page* %25)
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @PageLocked(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @VM_BUG_ON_PAGE(i32 %31, %struct.page* %32)
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @PageUptodate(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @VM_BUG_ON_PAGE(i32 %35, %struct.page* %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i64 @frontswap_load(%struct.page* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @SetPageUptodate(%struct.page* %42)
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @unlock_page(%struct.page* %44)
  br label %163

46:                                               ; preds = %22
  %47 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %48 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SWP_FS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %55 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %54, i32 0, i32 2
  %56 = load %struct.file*, %struct.file** %55, align 8
  store %struct.file* %56, %struct.file** %11, align 8
  %57 = load %struct.file*, %struct.file** %11, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load %struct.address_space*, %struct.address_space** %58, align 8
  store %struct.address_space* %59, %struct.address_space** %12, align 8
  %60 = load %struct.address_space*, %struct.address_space** %12, align 8
  %61 = getelementptr inbounds %struct.address_space, %struct.address_space* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %63, align 8
  %65 = load %struct.file*, %struct.file** %11, align 8
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 %64(%struct.file* %65, %struct.page* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* @PSWPIN, align 4
  %72 = call i32 @count_vm_event(i32 %71)
  br label %73

73:                                               ; preds = %70, %53
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %165

75:                                               ; preds = %46
  %76 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %77 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = call i32 @swap_page_sector(%struct.page* %79)
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = call i32 @bdev_read_page(i32 %78, i32 %80, %struct.page* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %75
  %86 = load %struct.page*, %struct.page** %4, align 8
  %87 = call i64 @trylock_page(%struct.page* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %4, align 8
  %91 = call i32 @swap_slot_free_notify(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %4, align 8
  %93 = call i32 @unlock_page(%struct.page* %92)
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* @PSWPIN, align 4
  %96 = call i32 @count_vm_event(i32 %95)
  store i32 0, i32* %3, align 4
  br label %165

97:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = load %struct.page*, %struct.page** %4, align 8
  %100 = load i32, i32* @end_swap_bio_read, align 4
  %101 = call %struct.bio* @get_swap_bio(i32 %98, %struct.page* %99, i32 %100)
  store %struct.bio* %101, %struct.bio** %6, align 8
  %102 = load %struct.bio*, %struct.bio** %6, align 8
  %103 = icmp eq %struct.bio* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.page*, %struct.page** %4, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %163

109:                                              ; preds = %97
  %110 = load %struct.bio*, %struct.bio** %6, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 2
  %112 = load %struct.gendisk*, %struct.gendisk** %111, align 8
  store %struct.gendisk* %112, %struct.gendisk** %10, align 8
  %113 = load %struct.bio*, %struct.bio** %6, align 8
  %114 = load i32, i32* @REQ_OP_READ, align 4
  %115 = call i32 @bio_set_op_attrs(%struct.bio* %113, i32 %114, i32 0)
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %109
  %119 = load i32, i32* @REQ_HIPRI, align 4
  %120 = load %struct.bio*, %struct.bio** %6, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @current, align 4
  %125 = call i32 @get_task_struct(i32 %124)
  %126 = load i32, i32* @current, align 4
  %127 = load %struct.bio*, %struct.bio** %6, align 8
  %128 = getelementptr inbounds %struct.bio, %struct.bio* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %118, %109
  %130 = load i32, i32* @PSWPIN, align 4
  %131 = call i32 @count_vm_event(i32 %130)
  %132 = load %struct.bio*, %struct.bio** %6, align 8
  %133 = call i32 @bio_get(%struct.bio* %132)
  %134 = load %struct.bio*, %struct.bio** %6, align 8
  %135 = call i32 @submit_bio(%struct.bio* %134)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %157, %129
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %136
  %140 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %141 = call i32 @set_current_state(i32 %140)
  %142 = load %struct.bio*, %struct.bio** %6, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @READ_ONCE(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  br label %158

148:                                              ; preds = %139
  %149 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %150 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @blk_poll(i32 %151, i32 %152, i32 1)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  %156 = call i32 (...) @io_schedule()
  br label %157

157:                                              ; preds = %155, %148
  br label %136

158:                                              ; preds = %147, %136
  %159 = load i32, i32* @TASK_RUNNING, align 4
  %160 = call i32 @__set_current_state(i32 %159)
  %161 = load %struct.bio*, %struct.bio** %6, align 8
  %162 = call i32 @bio_put(%struct.bio* %161)
  br label %163

163:                                              ; preds = %158, %104, %41
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %94, %73
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.swap_info_struct* @page_swap_info(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @frontswap_load(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @bdev_read_page(i32, i32, %struct.page*) #1

declare dso_local i32 @swap_page_sector(%struct.page*) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @swap_slot_free_notify(%struct.page*) #1

declare dso_local %struct.bio* @get_swap_bio(i32, %struct.page*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @blk_poll(i32, i32, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
