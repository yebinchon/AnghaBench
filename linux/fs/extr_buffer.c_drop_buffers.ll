; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_drop_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_drop_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.buffer_head**)* @drop_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_buffers(%struct.page* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.buffer_head* @page_buffers(%struct.page* %9)
  store %struct.buffer_head* %10, %struct.buffer_head** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %7, align 8
  br label %12

12:                                               ; preds = %21, %2
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = call i64 @buffer_busy(%struct.buffer_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %48

17:                                               ; preds = %12
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 1
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %7, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %24 = icmp ne %struct.buffer_head* %22, %23
  br i1 %24, label %12, label %25

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %39, %25
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 1
  %29 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %8, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i32 @__remove_assoc_queue(%struct.buffer_head* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %7, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = icmp ne %struct.buffer_head* %40, %41
  br i1 %42, label %26, label %43

43:                                               ; preds = %39
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %44, %struct.buffer_head** %45, align 8
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = call i32 @__clear_page_buffers(%struct.page* %46)
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_busy(%struct.buffer_head*) #1

declare dso_local i32 @__remove_assoc_queue(%struct.buffer_head*) #1

declare dso_local i32 @__clear_page_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
