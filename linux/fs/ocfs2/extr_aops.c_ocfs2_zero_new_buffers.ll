; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_zero_new_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_zero_new_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @ocfs2_zero_new_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_zero_new_buffers(%struct.page* %0, i32 %1, i32 %2) #0 {
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
  br label %75

23:                                               ; preds = %3
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call %struct.buffer_head* @page_buffers(%struct.page* %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %10, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %71, %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = call i64 @buffer_new(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @PageUptodate(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @zero_user_segment(%struct.page* %54, i32 %55, i32 %56)
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = call i32 @set_buffer_uptodate(%struct.buffer_head* %58)
  br label %60

60:                                               ; preds = %47, %43
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = call i32 @clear_buffer_new(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %64 = call i32 @mark_buffer_dirty(%struct.buffer_head* %63)
  br label %65

65:                                               ; preds = %60, %39, %35
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 1
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %10, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = icmp ne %struct.buffer_head* %72, %73
  br i1 %74, label %26, label %75

75:                                               ; preds = %22, %71
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

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
