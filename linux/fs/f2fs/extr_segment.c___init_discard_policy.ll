; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___init_discard_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___init_discard_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_policy = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i64, i32 }

@DEF_MAX_DISCARD_REQUEST = common dso_local global i32 0, align 4
@MAX_PLIST_NUM = common dso_local global i32 0, align 4
@DPOLICY_BG = common dso_local global i32 0, align 4
@DEF_MIN_DISCARD_ISSUE_TIME = common dso_local global i8* null, align 8
@DEF_MID_DISCARD_ISSUE_TIME = common dso_local global i8* null, align 8
@DEF_MAX_DISCARD_ISSUE_TIME = common dso_local global i8* null, align 8
@DEF_DISCARD_URGENT_UTIL = common dso_local global i64 0, align 8
@DPOLICY_FORCE = common dso_local global i32 0, align 4
@DPOLICY_FSTRIM = common dso_local global i32 0, align 4
@DPOLICY_UMOUNT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.discard_policy*, i32, i32)* @__init_discard_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_discard_policy(%struct.f2fs_sb_info* %0, %struct.discard_policy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.discard_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.discard_policy* %1, %struct.discard_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %11 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %13 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %15 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %14, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %18 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DEF_MAX_DISCARD_REQUEST, align 4
  %20 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %21 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @MAX_PLIST_NUM, align 4
  %23 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %24 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %26 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DPOLICY_BG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %4
  %31 = load i8*, i8** @DEF_MIN_DISCARD_ISSUE_TIME, align 8
  %32 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %33 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @DEF_MID_DISCARD_ISSUE_TIME, align 8
  %35 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %36 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @DEF_MAX_DISCARD_ISSUE_TIME, align 8
  %38 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %39 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %41 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %40, i32 0, i32 4
  store i32 1, i32* %41, align 8
  %42 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %43 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %45 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = call i64 @utilization(%struct.f2fs_sb_info* %46)
  %48 = load i64, i64* @DEF_DISCARD_URGENT_UTIL, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %30
  %51 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %52 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  %53 = load i8*, i8** @DEF_MIN_DISCARD_ISSUE_TIME, align 8
  %54 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %55 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %30
  br label %95

57:                                               ; preds = %4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DPOLICY_FORCE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i8*, i8** @DEF_MIN_DISCARD_ISSUE_TIME, align 8
  %63 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %64 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @DEF_MID_DISCARD_ISSUE_TIME, align 8
  %66 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %67 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @DEF_MAX_DISCARD_ISSUE_TIME, align 8
  %69 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %70 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %72 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %71, i32 0, i32 4
  store i32 0, i32* %72, align 8
  br label %94

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @DPOLICY_FSTRIM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %79 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %78, i32 0, i32 4
  store i32 0, i32* %79, align 8
  br label %93

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @DPOLICY_UMOUNT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* @UINT_MAX, align 4
  %86 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %87 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %89 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %88, i32 0, i32 4
  store i32 0, i32* %89, align 8
  %90 = load %struct.discard_policy*, %struct.discard_policy** %6, align 8
  %91 = getelementptr inbounds %struct.discard_policy, %struct.discard_policy* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94, %56
  ret void
}

declare dso_local i64 @utilization(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
