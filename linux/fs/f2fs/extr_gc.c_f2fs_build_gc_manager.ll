; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_build_gc_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_build_gc_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i64* }

@default_v_ops = common dso_local global i32 0, align 4
@DEF_GC_FAILED_PINNED_FILES = common dso_local global i32 0, align 4
@ALLOC_NEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_build_gc_manager(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = call %struct.TYPE_6__* @DIRTY_I(%struct.f2fs_sb_info* %4)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32* @default_v_ops, i32** %6, align 8
  %7 = load i32, i32* @DEF_GC_FAILED_PINNED_FILES, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %11 = call i64 @f2fs_is_multi_device(%struct.f2fs_sb_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %15 = call i32 @__is_large_section(%struct.f2fs_sb_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %19 = call i32 @FDEV(i32 0)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @GET_SEGNO(%struct.f2fs_sb_info* %18, i32 %22)
  %24 = add nsw i64 %23, 1
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %26 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @ALLOC_NEXT, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %24, i64* %30, align 8
  br label %31

31:                                               ; preds = %17, %13, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local i64 @GET_SEGNO(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @FDEV(i32) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
