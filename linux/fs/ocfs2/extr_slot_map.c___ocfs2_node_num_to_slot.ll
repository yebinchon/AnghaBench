; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c___ocfs2_node_num_to_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c___ocfs2_node_num_to_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_slot_info*, i32)* @__ocfs2_node_num_to_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_node_num_to_slot(%struct.ocfs2_slot_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_slot_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %25, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %9

42:                                               ; preds = %36, %9
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
