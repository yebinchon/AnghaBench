; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_run_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_run_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32 }

@COMMIT_BROKEN = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@COMMIT_RUNNING_BACKGROUND = common dso_local global i64 0, align 8
@COMMIT_RUNNING_REQUIRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_run_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @COMMIT_BROKEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EROFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @COMMIT_RUNNING_BACKGROUND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = call i32 @wait_for_commit(%struct.ubifs_info* %36)
  store i32 %37, i32* %2, align 4
  br label %100

38:                                               ; preds = %26
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  %44 = call i32 @down_write(i32* %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @COMMIT_BROKEN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @EROFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %38
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @COMMIT_RUNNING_BACKGROUND, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 2
  %75 = call i32 @up_write(i32* %74)
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = call i32 @wait_for_commit(%struct.ubifs_info* %79)
  store i32 %80, i32* %2, align 4
  br label %100

81:                                               ; preds = %66
  %82 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %89 = call i32 @do_commit(%struct.ubifs_info* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %100

91:                                               ; preds = %53
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 2
  %94 = call i32 @up_write(i32* %93)
  br label %95

95:                                               ; preds = %91, %13
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %95, %81, %72, %32
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_commit(%struct.ubifs_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @do_commit(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
