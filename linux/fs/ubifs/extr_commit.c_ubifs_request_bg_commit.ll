; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_request_bg_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_request_bg_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }

@COMMIT_RESTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"old: %s, new: %s\00", align 1
@COMMIT_BACKGROUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_request_bg_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %3 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @COMMIT_RESTING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dbg_cstate(i64 %14)
  %16 = load i64, i64* @COMMIT_BACKGROUND, align 8
  %17 = call i32 @dbg_cstate(i64 %16)
  %18 = call i32 @dbg_cmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load i64, i64* @COMMIT_BACKGROUND, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %26 = call i32 @ubifs_wake_up_bgt(%struct.ubifs_info* %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dbg_cmt(i8*, i32, i32) #1

declare dso_local i32 @dbg_cstate(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_wake_up_bgt(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
