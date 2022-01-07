; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h___set_test_and_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h___set_test_and_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_segmap_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @__set_test_and_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_test_and_free(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.free_segmap_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = call %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info* %9)
  store %struct.free_segmap_info* %10, %struct.free_segmap_info** %5, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %18 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %22 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_and_clear_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %2
  %27 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %28 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @IS_CURSEC(%struct.f2fs_sb_info* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %69

36:                                               ; preds = %26
  %37 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %38 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @find_next_bit(i32 %39, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %50 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %48, %51
  %53 = icmp uge i32 %47, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %57 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_and_clear_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %63 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %2
  br label %69

69:                                               ; preds = %68, %35
  %70 = load %struct.free_segmap_info*, %struct.free_segmap_info** %5, align 8
  %71 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i64 @IS_CURSEC(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
