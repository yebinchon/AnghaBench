; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_end_buffer_async_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_end_buffer_async_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head*, %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c", async page read\00", align 1
@BH_Uptodate_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @end_buffer_async_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_buffer_async_read(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = call i64 @buffer_async_read(%struct.buffer_head* %10)
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 2
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = call i32 @set_buffer_uptodate(%struct.buffer_head* %22)
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %28 = call i32 @buffer_io_error(%struct.buffer_head* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @SetPageError(%struct.page* %29)
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = call %struct.buffer_head* @page_buffers(%struct.page* %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @local_irq_save(i64 %34)
  %36 = load i32, i32* @BH_Uptodate_Lock, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = call i32 @bit_spin_lock(i32 %36, i32* %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %41 = call i32 @clear_buffer_async_read(%struct.buffer_head* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %43 = call i32 @unlock_buffer(%struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %44, %struct.buffer_head** %7, align 8
  br label %45

45:                                               ; preds = %65, %31
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @buffer_uptodate(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = call i64 @buffer_async_read(%struct.buffer_head* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @buffer_locked(%struct.buffer_head* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %88

61:                                               ; preds = %50
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load %struct.buffer_head*, %struct.buffer_head** %63, align 8
  store %struct.buffer_head* %64, %struct.buffer_head** %7, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %68 = icmp ne %struct.buffer_head* %66, %67
  br i1 %68, label %45, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @BH_Uptodate_Lock, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = call i32 @bit_spin_unlock(i32 %70, i32* %72)
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.page*, %struct.page** %8, align 8
  %80 = call i32 @PageError(%struct.page* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load %struct.page*, %struct.page** %8, align 8
  %84 = call i32 @SetPageUptodate(%struct.page* %83)
  br label %85

85:                                               ; preds = %82, %78, %69
  %86 = load %struct.page*, %struct.page** %8, align 8
  %87 = call i32 @unlock_page(%struct.page* %86)
  br label %95

88:                                               ; preds = %54
  %89 = load i32, i32* @BH_Uptodate_Lock, align 4
  %90 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = call i32 @bit_spin_unlock(i32 %89, i32* %91)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  br label %95

95:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_io_error(%struct.buffer_head*, i8*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @bit_spin_lock(i32, i32*) #1

declare dso_local i32 @clear_buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @bit_spin_unlock(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
