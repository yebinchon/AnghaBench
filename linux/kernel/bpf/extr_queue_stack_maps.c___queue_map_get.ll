; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c___queue_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c___queue_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_queue_stack = type { i64, i64, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i32)* @__queue_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__queue_map_get(%struct.bpf_map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_queue_stack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %12 = call %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map* %11)
  store %struct.bpf_queue_stack* %12, %struct.bpf_queue_stack** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %14 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %13, i32 0, i32 2
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %18 = call i64 @queue_stack_map_is_empty(%struct.bpf_queue_stack* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @memset(i8* %21, i32 0, i64 %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %69

29:                                               ; preds = %3
  %30 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %31 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %34 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %37 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %35, %39
  %41 = getelementptr inbounds i32, i32* %32, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %46 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy(i8* %43, i8* %44, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %29
  %53 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %54 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %58 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %66 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %52
  br label %68

68:                                               ; preds = %67, %29
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %71 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %70, i32 0, i32 2
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @raw_spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @queue_stack_map_is_empty(%struct.bpf_queue_stack*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
