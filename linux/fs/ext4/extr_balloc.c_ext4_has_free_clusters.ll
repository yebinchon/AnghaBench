; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_has_free_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_has_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, %struct.percpu_counter, %struct.percpu_counter }
%struct.percpu_counter = type { i32 }

@EXT4_FREECLUSTERS_WATERMARK = common dso_local global i64 0, align 8
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EXT4_MB_USE_ROOT_BLOCKS = common dso_local global i32 0, align 4
@EXT4_MB_USE_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_sb_info*, i64, i32)* @ext4_has_free_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_has_free_clusters(%struct.ext4_sb_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.percpu_counter*, align 8
  %13 = alloca %struct.percpu_counter*, align 8
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %14, i32 0, i32 6
  store %struct.percpu_counter* %15, %struct.percpu_counter** %12, align 8
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 5
  store %struct.percpu_counter* %17, %struct.percpu_counter** %13, align 8
  %18 = load %struct.percpu_counter*, %struct.percpu_counter** %12, align 8
  %19 = call i64 @percpu_counter_read_positive(%struct.percpu_counter* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.percpu_counter*, %struct.percpu_counter** %13, align 8
  %21 = call i64 @percpu_counter_read_positive(%struct.percpu_counter* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %22, i32 0, i32 4
  %24 = call i64 @atomic64_read(i32* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ext4_r_blocks_count(i32 %27)
  %29 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %36, %41
  %43 = load i64, i64* @EXT4_FREECLUSTERS_WATERMARK, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.percpu_counter*, %struct.percpu_counter** %12, align 8
  %47 = call i64 @percpu_counter_sum_positive(%struct.percpu_counter* %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.percpu_counter*, %struct.percpu_counter** %13, align 8
  %49 = call i64 @percpu_counter_sum_positive(%struct.percpu_counter* %48)
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %45, %3
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sge i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %112

59:                                               ; preds = %50
  %60 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %61 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (...) @current_fsuid()
  %64 = call i64 @uid_eq(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %59
  %67 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %68 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %71 = call i32 @gid_eq(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %75 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @in_group_p(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %81 = call i64 @capable(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @EXT4_MB_USE_ROOT_BLOCKS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83, %79, %73, %59
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp sge i64 %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 1, i32* %4, align 4
  br label %112

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @EXT4_MB_USE_RESERVED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %105, %106
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %112

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %98
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %109, %96, %58
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @percpu_counter_read_positive(%struct.percpu_counter*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @ext4_r_blocks_count(i32) #1

declare dso_local i64 @percpu_counter_sum_positive(%struct.percpu_counter*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @in_group_p(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
