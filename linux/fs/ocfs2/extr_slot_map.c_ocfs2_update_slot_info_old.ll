; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_update_slot_info_old.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_update_slot_info_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_slot_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_slot_map = type { i32* }

@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_slot_info*)* @ocfs2_update_slot_info_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_update_slot_info_old(%struct.ocfs2_slot_info* %0) #0 {
  %2 = alloca %struct.ocfs2_slot_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_slot_map*, align 8
  store %struct.ocfs2_slot_info* %0, %struct.ocfs2_slot_info** %2, align 8
  %5 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_slot_map*
  store %struct.ocfs2_slot_map* %12, %struct.ocfs2_slot_map** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.ocfs2_slot_map*, %struct.ocfs2_slot_map** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_slot_map, %struct.ocfs2_slot_map* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info* %31, i32 %32)
  br label %46

34:                                               ; preds = %19
  %35 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.ocfs2_slot_map*, %struct.ocfs2_slot_map** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_slot_map, %struct.ocfs2_slot_map* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = call i32 @ocfs2_set_slot(%struct.ocfs2_slot_info* %35, i32 %36, i64 %44)
  br label %46

46:                                               ; preds = %34, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %13

50:                                               ; preds = %13
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_invalidate_slot(%struct.ocfs2_slot_info*, i32) #1

declare dso_local i32 @ocfs2_set_slot(%struct.ocfs2_slot_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
