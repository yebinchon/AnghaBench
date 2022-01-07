; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_get_left_neighbor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_get_left_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.treepath* }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"green-4002: Illegal path specified to get_left_neighbor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @get_left_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_left_neighbor(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.item_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.treepath*, %struct.treepath** %12, align 8
  %14 = icmp ne %struct.treepath* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.treepath*, %struct.treepath** %18, align 8
  store %struct.treepath* %19, %struct.treepath** %4, align 8
  %20 = load %struct.treepath*, %struct.treepath** %4, align 8
  %21 = call %struct.buffer_head* @get_last_bh(%struct.treepath* %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %5, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @RFALSE(i32 %25, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.treepath*, %struct.treepath** %4, align 8
  %28 = call %struct.item_head* @tp_item_head(%struct.treepath* %27)
  store %struct.item_head* %28, %struct.item_head** %6, align 8
  %29 = load %struct.treepath*, %struct.treepath** %4, align 8
  %30 = getelementptr inbounds %struct.treepath, %struct.treepath* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.treepath*, %struct.treepath** %4, align 8
  %33 = call i32* @tp_item_body(%struct.treepath* %32)
  store i32* %33, i32** %8, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %16
  %44 = load %struct.item_head*, %struct.item_head** %6, align 8
  %45 = call i64 @is_indirect_le_ih(%struct.item_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.item_head*, %struct.item_head** %6, align 8
  %50 = call i32 @I_UNFM_NUM(%struct.item_head* %49)
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @get_block_num(i32* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 1, i32* %9, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %56

72:                                               ; preds = %65, %56
  br label %73

73:                                               ; preds = %72, %43, %16
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.buffer_head* @get_last_bh(%struct.treepath*) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.treepath*) #1

declare dso_local i32* @tp_item_body(%struct.treepath*) #1

declare dso_local i64 @is_indirect_le_ih(%struct.item_head*) #1

declare dso_local i32 @I_UNFM_NUM(%struct.item_head*) #1

declare dso_local i32 @get_block_num(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
