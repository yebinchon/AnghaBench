; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_bh_lru_install.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_bh_lru_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.bh_lru = type { i32* }

@bh_lrus = common dso_local global i32 0, align 4
@BH_LRU_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @bh_lru_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bh_lru_install(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.bh_lru*, align 8
  %5 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %3, align 8
  %7 = call i32 (...) @check_irqs_on()
  %8 = call i32 (...) @bh_lru_lock()
  %9 = call %struct.bh_lru* @this_cpu_ptr(i32* @bh_lrus)
  store %struct.bh_lru* %9, %struct.bh_lru** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BH_LRU_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %16 = load %struct.bh_lru*, %struct.bh_lru** %4, align 8
  %17 = getelementptr inbounds %struct.bh_lru, %struct.bh_lru* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @swap(%struct.buffer_head* %15, i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %26 = icmp eq %struct.buffer_head* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 (...) @bh_lru_unlock()
  br label %39

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %35 = call i32 @get_bh(%struct.buffer_head* %34)
  %36 = call i32 (...) @bh_lru_unlock()
  %37 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %38 = call i32 @brelse(%struct.buffer_head* %37)
  br label %39

39:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @check_irqs_on(...) #1

declare dso_local i32 @bh_lru_lock(...) #1

declare dso_local %struct.bh_lru* @this_cpu_ptr(i32*) #1

declare dso_local i32 @swap(%struct.buffer_head*, i32) #1

declare dso_local i32 @bh_lru_unlock(...) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
