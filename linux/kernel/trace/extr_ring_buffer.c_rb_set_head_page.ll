; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_set_head_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_set_head_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_page = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ring_buffer_per_cpu = type { %struct.buffer_page*, %struct.list_head* }
%struct.list_head = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_page* (%struct.ring_buffer_per_cpu*)* @rb_set_head_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.buffer_page*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.buffer_page*, align 8
  %5 = alloca %struct.buffer_page*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %3, align 8
  %8 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %9 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %10 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %9, i32 0, i32 0
  %11 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %12 = icmp ne %struct.buffer_page* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %8, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.buffer_page* null, %struct.buffer_page** %2, align 8
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %19, i32 0, i32 1
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  store %struct.list_head* %21, %struct.list_head** %6, align 8
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.list_head* @rb_list_head(i32 %27)
  %29 = load %struct.list_head*, %struct.list_head** %6, align 8
  %30 = icmp ne %struct.list_head* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %22, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store %struct.buffer_page* null, %struct.buffer_page** %2, align 8
  br label %71

35:                                               ; preds = %18
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %36, i32 0, i32 0
  %38 = load %struct.buffer_page*, %struct.buffer_page** %37, align 8
  store %struct.buffer_page* %38, %struct.buffer_page** %4, align 8
  store %struct.buffer_page* %38, %struct.buffer_page** %5, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %65, %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %60, %42
  %44 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %45 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %46 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %47 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rb_is_head_page(%struct.ring_buffer_per_cpu* %44, %struct.buffer_page* %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %54 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %54, i32 0, i32 0
  store %struct.buffer_page* %53, %struct.buffer_page** %55, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  store %struct.buffer_page* %56, %struct.buffer_page** %2, align 8
  br label %71

57:                                               ; preds = %43
  %58 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %59 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %58, %struct.buffer_page** %5)
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %62 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %63 = icmp ne %struct.buffer_page* %61, %62
  br i1 %63, label %43, label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %39

68:                                               ; preds = %39
  %69 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %70 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %69, i32 1)
  store %struct.buffer_page* null, %struct.buffer_page** %2, align 8
  br label %71

71:                                               ; preds = %68, %52, %34, %17
  %72 = load %struct.buffer_page*, %struct.buffer_page** %2, align 8
  ret %struct.buffer_page* %72
}

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local %struct.list_head* @rb_list_head(i32) #1

declare dso_local i64 @rb_is_head_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, i32) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
