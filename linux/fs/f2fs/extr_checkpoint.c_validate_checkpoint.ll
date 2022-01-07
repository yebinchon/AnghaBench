; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_validate_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_validate_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_checkpoint = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"invalid cp_pack_total_block_count:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.f2fs_sb_info*, i32, i64*)* @validate_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @validate_checkpoint(%struct.f2fs_sb_info* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.f2fs_checkpoint*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  store %struct.page* null, %struct.page** %9, align 8
  store %struct.f2fs_checkpoint* null, %struct.f2fs_checkpoint** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64*, i64** %7, align 8
  %17 = call i32 @get_checkpoint_version(%struct.f2fs_sb_info* %14, i32 %15, %struct.f2fs_checkpoint** %10, %struct.page** %8, i64* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.page* null, %struct.page** %4, align 8
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %10, align 8
  %23 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %32 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %10, align 8
  %33 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %69

37:                                               ; preds = %21
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %10, align 8
  %41 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i64*, i64** %7, align 8
  %50 = call i32 @get_checkpoint_version(%struct.f2fs_sb_info* %47, i32 %48, %struct.f2fs_checkpoint** %10, %struct.page** %9, i64* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %69

54:                                               ; preds = %37
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.page*, %struct.page** %9, align 8
  %64 = call i32 @f2fs_put_page(%struct.page* %63, i32 1)
  %65 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %65, %struct.page** %4, align 8
  br label %72

66:                                               ; preds = %54
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i32 @f2fs_put_page(%struct.page* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %53, %30
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @f2fs_put_page(%struct.page* %70, i32 1)
  store %struct.page* null, %struct.page** %4, align 8
  br label %72

72:                                               ; preds = %69, %60, %20
  %73 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %73
}

declare dso_local i32 @get_checkpoint_version(%struct.f2fs_sb_info*, i32, %struct.f2fs_checkpoint**, %struct.page**, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
