; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_ubifs_tnc_start_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_ubifs_tnc_start_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.ubifs_zbranch = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"number of index LEBs %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"size of index %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_start_commit(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = call i32 @dbg_check_tnc(%struct.ubifs_info* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = call i32 @get_znodes_to_commit(%struct.ubifs_info* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @alloc_idx_lebs(%struct.ubifs_info* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %114

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @layout_commit(%struct.ubifs_info* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %114

44:                                               ; preds = %36
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 6
  %48 = call i64 @atomic_long_read(i32* %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ubifs_assert(%struct.ubifs_info* %45, i32 %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = call i32 @free_unused_idx_lebs(%struct.ubifs_info* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %117

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %17
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = call i32 @destroy_old_idx(%struct.ubifs_info* %59)
  %61 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 5
  %64 = call i32 @memcpy(%struct.ubifs_zbranch* %61, i32* %63, i32 4)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = call i32 @ubifs_save_dirty_idx_lnums(%struct.ubifs_info* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %117

70:                                               ; preds = %58
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 3
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %80 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %79)
  %81 = icmp eq i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ubifs_assert(%struct.ubifs_info* %74, i32 %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %94 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 3
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dbg_cmt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dbg_cmt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %122

114:                                              ; preds = %43, %34
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %116 = call i32 @free_idx_lebs(%struct.ubifs_info* %115)
  br label %117

117:                                              ; preds = %114, %69, %56, %16
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %70
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @get_znodes_to_commit(%struct.ubifs_info*) #1

declare dso_local i32 @alloc_idx_lebs(%struct.ubifs_info*, i32) #1

declare dso_local i32 @layout_commit(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @free_unused_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @destroy_old_idx(%struct.ubifs_info*) #1

declare dso_local i32 @memcpy(%struct.ubifs_zbranch*, i32*, i32) #1

declare dso_local i32 @ubifs_save_dirty_idx_lnums(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbg_cmt(i8*, i32) #1

declare dso_local i32 @free_idx_lebs(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
