; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_lookup_bh_lru.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_lookup_bh_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.buffer_head = type { i64, i32, %struct.block_device* }
%struct.block_device = type { i32 }

@BH_LRU_SIZE = common dso_local global i32 0, align 4
@bh_lrus = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.block_device*, i64, i32)* @lookup_bh_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @lookup_bh_lru(%struct.block_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %10 = call i32 (...) @check_irqs_on()
  %11 = call i32 (...) @bh_lru_lock()
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %77, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BH_LRU_SIZE, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bh_lrus, i32 0, i32 0), align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.buffer_head* @__this_cpu_read(i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %9, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = icmp ne %struct.buffer_head* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %16
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %25
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 2
  %34 = load %struct.block_device*, %struct.block_device** %33, align 8
  %35 = load %struct.block_device*, %struct.block_device** %4, align 8
  %36 = icmp eq %struct.block_device* %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bh_lrus, i32 0, i32 0), align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bh_lrus, i32 0, i32 0), align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.buffer_head* @__this_cpu_read(i32 %61)
  %63 = call i32 @__this_cpu_write(i32 %55, %struct.buffer_head* %62)
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bh_lrus, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %71 = call i32 @__this_cpu_write(i32 %69, %struct.buffer_head* %70)
  br label %72

72:                                               ; preds = %66, %43
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = call i32 @get_bh(%struct.buffer_head* %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %7, align 8
  br label %80

76:                                               ; preds = %37, %31, %25, %16
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %12

80:                                               ; preds = %72, %12
  %81 = call i32 (...) @bh_lru_unlock()
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  ret %struct.buffer_head* %82
}

declare dso_local i32 @check_irqs_on(...) #1

declare dso_local i32 @bh_lru_lock(...) #1

declare dso_local %struct.buffer_head* @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @bh_lru_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
