; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_end_buffer_async_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_end_buffer_async_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head*, %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c", lost async page write\00", align 1
@BH_Uptodate_Lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_buffer_async_write(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %10 = call i64 @buffer_async_write(%struct.buffer_head* %9)
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 2
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %22 = call i32 @set_buffer_uptodate(%struct.buffer_head* %21)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i32 @buffer_io_error(%struct.buffer_head* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %27 = call i32 @mark_buffer_write_io_error(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %29 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %28)
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i32 @SetPageError(%struct.page* %30)
  br label %32

32:                                               ; preds = %23, %20
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call %struct.buffer_head* @page_buffers(%struct.page* %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @local_irq_save(i64 %35)
  %37 = load i32, i32* @BH_Uptodate_Lock, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = call i32 @bit_spin_lock(i32 %37, i32* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %42 = call i32 @clear_buffer_async_write(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %44 = call i32 @unlock_buffer(%struct.buffer_head* %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 1
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  store %struct.buffer_head* %47, %struct.buffer_head** %7, align 8
  br label %48

48:                                               ; preds = %63, %32
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %51 = icmp ne %struct.buffer_head* %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = call i64 @buffer_async_write(%struct.buffer_head* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call i32 @buffer_locked(%struct.buffer_head* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  br label %76

63:                                               ; preds = %52
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %7, align 8
  br label %48

67:                                               ; preds = %48
  %68 = load i32, i32* @BH_Uptodate_Lock, align 4
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = call i32 @bit_spin_unlock(i32 %68, i32* %70)
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @local_irq_restore(i64 %72)
  %74 = load %struct.page*, %struct.page** %8, align 8
  %75 = call i32 @end_page_writeback(%struct.page* %74)
  br label %83

76:                                               ; preds = %56
  %77 = load i32, i32* @BH_Uptodate_Lock, align 4
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = call i32 @bit_spin_unlock(i32 %77, i32* %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  br label %83

83:                                               ; preds = %76, %67
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_io_error(%struct.buffer_head*, i8*) #1

declare dso_local i32 @mark_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @bit_spin_lock(i32, i32*) #1

declare dso_local i32 @clear_buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @bit_spin_unlock(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
