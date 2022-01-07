; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c___ocfs2_find_empty_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c___ocfs2_find_empty_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_slot_info*, i32)* @__ocfs2_find_empty_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_find_empty_slot(%struct.ocfs2_slot_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_slot_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENOSPC, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %6, align 4
  br label %54

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %11, %2
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %31

53:                                               ; preds = %47, %31
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
