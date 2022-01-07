; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c___stack_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c___stack_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_queue_stack = type { i32, i64, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i32)* @__stack_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stack_map_get(%struct.bpf_map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_queue_stack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %13 = call %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map* %12)
  store %struct.bpf_queue_stack* %13, %struct.bpf_queue_stack** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %15 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %14, i32 0, i32 2
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @raw_spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %19 = call i64 @queue_stack_map_is_empty(%struct.bpf_queue_stack* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %24 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memset(i8* %22, i32 0, i64 %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %76

30:                                               ; preds = %3
  %31 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %32 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %38 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %46 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %44, %30
  %50 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %51 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %55 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %53, %57
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %64 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i8* %61, i8* %62, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %49
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %74 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %49
  br label %76

76:                                               ; preds = %75, %21
  %77 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %7, align 8
  %78 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %77, i32 0, i32 2
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @raw_spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @queue_stack_map_is_empty(%struct.bpf_queue_stack*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
