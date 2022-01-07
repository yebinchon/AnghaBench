; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_replay_slots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_replay_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_replay_map* }
%struct.ocfs2_replay_map = type { i64, i32, i64* }

@REPLAY_NEEDED = common dso_local global i64 0, align 8
@REPLAY_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, i32)* @ocfs2_queue_replay_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_queue_replay_slots(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_replay_map*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 1
  %9 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %8, align 8
  store %struct.ocfs2_replay_map* %9, %struct.ocfs2_replay_map** %5, align 8
  %10 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %5, align 8
  %11 = icmp ne %struct.ocfs2_replay_map* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REPLAY_NEEDED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %51

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ocfs2_queue_recovery_completion(i32 %39, i32 %40, i32* null, i32* null, i32* null, i32 %41)
  br label %43

43:                                               ; preds = %36, %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load i64, i64* @REPLAY_DONE, align 8
  %49 = load %struct.ocfs2_replay_map*, %struct.ocfs2_replay_map** %5, align 8
  %50 = getelementptr inbounds %struct.ocfs2_replay_map, %struct.ocfs2_replay_map* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %19, %12
  ret void
}

declare dso_local i32 @ocfs2_queue_recovery_completion(i32, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
