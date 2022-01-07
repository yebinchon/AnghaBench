; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_check_limits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_check_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_context = type { i64, i64, i32, %struct.ext4_free_extent, %struct.ext4_free_extent, i32 }
%struct.ext4_free_extent = type { i32, i64, i32 }
%struct.ext4_buddy = type { i64 }
%struct.ext4_sb_info = type { i64, i64 }

@AC_STATUS_FOUND = common dso_local global i64 0, align 8
@EXT4_MB_HINT_FIRST = common dso_local global i32 0, align 4
@AC_STATUS_BREAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_allocation_context*, %struct.ext4_buddy*, i32)* @ext4_mb_check_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_check_limits(%struct.ext4_allocation_context* %0, %struct.ext4_buddy* %1, i32 %2) #0 {
  %4 = alloca %struct.ext4_allocation_context*, align 8
  %5 = alloca %struct.ext4_buddy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.ext4_free_extent*, align 8
  %9 = alloca %struct.ext4_free_extent*, align 8
  %10 = alloca %struct.ext4_free_extent, align 8
  %11 = alloca i32, align 4
  store %struct.ext4_allocation_context* %0, %struct.ext4_allocation_context** %4, align 8
  store %struct.ext4_buddy* %1, %struct.ext4_buddy** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %13 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(i32 %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %7, align 8
  %16 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %16, i32 0, i32 4
  store %struct.ext4_free_extent* %17, %struct.ext4_free_extent** %8, align 8
  %18 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %18, i32 0, i32 3
  store %struct.ext4_free_extent* %19, %struct.ext4_free_extent** %9, align 8
  %20 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %21 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AC_STATUS_FOUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %92

26:                                               ; preds = %3
  %27 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %28 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %36 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EXT4_MB_HINT_FIRST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* @AC_STATUS_BREAK, align 8
  %43 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %92

45:                                               ; preds = %34, %26
  %46 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %50 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %92

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %59 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %62 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %57, %54
  %66 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %67 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ext4_buddy*, %struct.ext4_buddy** %5, align 8
  %70 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %65
  %74 = load %struct.ext4_buddy*, %struct.ext4_buddy** %5, align 8
  %75 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %76 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %79 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mb_find_extent(%struct.ext4_buddy* %74, i32 %77, i32 %80, %struct.ext4_free_extent* %10)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %9, align 8
  %84 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %89 = load %struct.ext4_buddy*, %struct.ext4_buddy** %5, align 8
  %90 = call i32 @ext4_mb_use_best_found(%struct.ext4_allocation_context* %88, %struct.ext4_buddy* %89)
  br label %92

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %25, %41, %53, %87, %91, %65, %57
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @mb_find_extent(%struct.ext4_buddy*, i32, i32, %struct.ext4_free_extent*) #1

declare dso_local i32 @ext4_mb_use_best_found(%struct.ext4_allocation_context*, %struct.ext4_buddy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
