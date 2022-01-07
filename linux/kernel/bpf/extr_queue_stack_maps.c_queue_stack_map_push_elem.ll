; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_push_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_push_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_queue_stack = type { i64, i64, i64, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@BPF_EXIST = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i32)* @queue_stack_map_push_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_stack_map_push_elem(%struct.bpf_map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_queue_stack*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %14 = call %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map* %13)
  store %struct.bpf_queue_stack* %14, %struct.bpf_queue_stack** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BPF_EXIST, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BPF_NOEXIST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BPF_EXIST, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %101

29:                                               ; preds = %22
  %30 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %31 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %30, i32 0, i32 3
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @raw_spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %35 = call i64 @queue_stack_map_is_full(%struct.bpf_queue_stack* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @E2BIG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %95

43:                                               ; preds = %37
  %44 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %49 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %57 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %61 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %64 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %65, %69
  %71 = getelementptr inbounds i32, i32* %62, i64 %70
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %76 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i8* %73, i8* %74, i64 %78)
  %80 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %81 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %85 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp uge i64 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %59
  %92 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %93 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %59
  br label %95

95:                                               ; preds = %94, %40
  %96 = load %struct.bpf_queue_stack*, %struct.bpf_queue_stack** %8, align 8
  %97 = getelementptr inbounds %struct.bpf_queue_stack, %struct.bpf_queue_stack* %96, i32 0, i32 3
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @raw_spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %26
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.bpf_queue_stack* @bpf_queue_stack(%struct.bpf_map*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @queue_stack_map_is_full(%struct.bpf_queue_stack*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
