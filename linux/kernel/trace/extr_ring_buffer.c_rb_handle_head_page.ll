; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_handle_head_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_handle_head_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32, i32, i32 }
%struct.buffer_page = type { i32 }

@BUF_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*)* @rb_handle_head_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_handle_head_page(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_page*, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %6, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %7, align 8
  %13 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %14 = call i32 @rb_page_entries(%struct.buffer_page* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %16 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %17 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %18 = call i32 @rb_head_page_set_update(%struct.ring_buffer_per_cpu* %15, %struct.buffer_page* %16, %struct.buffer_page* %17, i32 131)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %32 [
    i32 131, label %20
    i32 128, label %29
    i32 129, label %30
    i32 130, label %31
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %22, i32 0, i32 2
  %24 = call i32 @local_add(i32 %21, i32* %23)
  %25 = load i32, i32* @BUF_PAGE_SIZE, align 4
  %26 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %26, i32 0, i32 1
  %28 = call i32 @local_sub(i32 %25, i32* %27)
  br label %35

29:                                               ; preds = %3
  br label %35

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %86

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %86

32:                                               ; preds = %3
  %33 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %34 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %33, i32 1)
  store i32 -1, i32* %4, align 4
  br label %86

35:                                               ; preds = %29, %20
  %36 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  store %struct.buffer_page* %36, %struct.buffer_page** %8, align 8
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %38 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %37, %struct.buffer_page** %8)
  %39 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %40 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %41 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %42 = call i32 @rb_head_page_set_head(%struct.ring_buffer_per_cpu* %39, %struct.buffer_page* %40, %struct.buffer_page* %41, i32 129)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %45 [
    i32 131, label %44
    i32 129, label %44
  ]

44:                                               ; preds = %35, %35
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %47 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %46, i32 1)
  store i32 -1, i32* %4, align 4
  br label %86

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.buffer_page* @READ_ONCE(i32 %54)
  store %struct.buffer_page* %55, %struct.buffer_page** %12, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %57 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %58 = icmp ne %struct.buffer_page* %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %61 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %62 = icmp ne %struct.buffer_page* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %65 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %66 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %67 = call i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu* %64, %struct.buffer_page* %65, %struct.buffer_page* %66, i32 131)
  br label %68

68:                                               ; preds = %63, %59, %51
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 131
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %74 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %75 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %76 = call i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu* %73, %struct.buffer_page* %74, %struct.buffer_page* %75, i32 128)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 128
  %80 = zext i1 %79 to i32
  %81 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %86

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %69
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %83, %45, %32, %31, %30
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @rb_page_entries(%struct.buffer_page*) #1

declare dso_local i32 @rb_head_page_set_update(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

declare dso_local i32 @local_add(i32, i32*) #1

declare dso_local i32 @local_sub(i32, i32*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page**) #1

declare dso_local i32 @rb_head_page_set_head(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

declare dso_local %struct.buffer_page* @READ_ONCE(i32) #1

declare dso_local i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
