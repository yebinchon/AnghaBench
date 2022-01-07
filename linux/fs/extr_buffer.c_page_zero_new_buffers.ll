; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_page_zero_new_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_page_zero_new_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_zero_new_buffers(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @page_has_buffers(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call %struct.buffer_head* @page_buffers(%struct.page* %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %10, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %73, %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = call i64 @buffer_new(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @PageUptodate(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @zero_user(%struct.page* %56, i32 %57, i32 %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = call i32 @set_buffer_uptodate(%struct.buffer_head* %60)
  br label %62

62:                                               ; preds = %47, %43
  %63 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %64 = call i32 @clear_buffer_new(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %66 = call i32 @mark_buffer_dirty(%struct.buffer_head* %65)
  br label %67

67:                                               ; preds = %62, %39, %35
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 1
  %72 = load %struct.buffer_head*, %struct.buffer_head** %71, align 8
  store %struct.buffer_head* %72, %struct.buffer_head** %10, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = icmp ne %struct.buffer_head* %74, %75
  br i1 %76, label %26, label %77

77:                                               ; preds = %22, %73
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
