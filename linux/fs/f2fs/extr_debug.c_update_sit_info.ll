; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_debug.c_update_sit_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_debug.c_update_sit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }
%struct.f2fs_stat_info = type { i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @update_sit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sit_info(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_stat_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %13 = call %struct.f2fs_stat_info* @F2FS_STAT(%struct.f2fs_sb_info* %12)
  store %struct.f2fs_stat_info* %13, %struct.f2fs_stat_info** %3, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %15 = call i64 @BLKS_PER_SEC(%struct.f2fs_sb_info* %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = udiv i64 %16, 2
  store i64 %17, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %21 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @get_valid_blocks(%struct.f2fs_sb_info* %24, i32 %25, i32 1)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %5, align 8
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @abs(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = mul i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %23
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %45, %40, %23
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %55 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %18

61:                                               ; preds = %18
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %63 = call i64 @MAIN_SECS(%struct.f2fs_sb_info* %62)
  %64 = load i64, i64* %5, align 8
  %65 = mul i64 %63, %64
  %66 = load i64, i64* %5, align 8
  %67 = mul i64 %65, %66
  %68 = call i8* @div_u64(i64 %67, i32 100)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @div64_u64(i64 %70, i64 %71)
  %73 = load %struct.f2fs_stat_info*, %struct.f2fs_stat_info** %3, align 8
  %74 = getelementptr inbounds %struct.f2fs_stat_info, %struct.f2fs_stat_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.f2fs_stat_info*, %struct.f2fs_stat_info** %3, align 8
  %76 = getelementptr inbounds %struct.f2fs_stat_info, %struct.f2fs_stat_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %61
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @div_u64(i64 %80, i32 %81)
  %83 = load %struct.f2fs_stat_info*, %struct.f2fs_stat_info** %3, align 8
  %84 = getelementptr inbounds %struct.f2fs_stat_info, %struct.f2fs_stat_info* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %88

85:                                               ; preds = %61
  %86 = load %struct.f2fs_stat_info*, %struct.f2fs_stat_info** %3, align 8
  %87 = getelementptr inbounds %struct.f2fs_stat_info, %struct.f2fs_stat_info* %86, i32 0, i32 0
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  ret void
}

declare dso_local %struct.f2fs_stat_info* @F2FS_STAT(%struct.f2fs_sb_info*) #1

declare dso_local i64 @BLKS_PER_SEC(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i8* @div_u64(i64, i32) #1

declare dso_local i64 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @div64_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
