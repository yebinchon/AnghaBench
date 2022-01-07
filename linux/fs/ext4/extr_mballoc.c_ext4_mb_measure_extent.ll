; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_measure_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_measure_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_context = type { i64, i32, i32, i32, %struct.ext4_free_extent, %struct.ext4_free_extent }
%struct.ext4_free_extent = type { i64, i64 }
%struct.ext4_buddy = type { i32 }

@AC_STATUS_CONTINUE = common dso_local global i64 0, align 8
@EXT4_MB_HINT_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_allocation_context*, %struct.ext4_free_extent*, %struct.ext4_buddy*)* @ext4_mb_measure_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_measure_extent(%struct.ext4_allocation_context* %0, %struct.ext4_free_extent* %1, %struct.ext4_buddy* %2) #0 {
  %4 = alloca %struct.ext4_allocation_context*, align 8
  %5 = alloca %struct.ext4_free_extent*, align 8
  %6 = alloca %struct.ext4_buddy*, align 8
  %7 = alloca %struct.ext4_free_extent*, align 8
  %8 = alloca %struct.ext4_free_extent*, align 8
  store %struct.ext4_allocation_context* %0, %struct.ext4_allocation_context** %4, align 8
  store %struct.ext4_free_extent* %1, %struct.ext4_free_extent** %5, align 8
  store %struct.ext4_buddy* %2, %struct.ext4_buddy** %6, align 8
  %9 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %10 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %9, i32 0, i32 5
  store %struct.ext4_free_extent* %10, %struct.ext4_free_extent** %7, align 8
  %11 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %12 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %11, i32 0, i32 4
  store %struct.ext4_free_extent* %12, %struct.ext4_free_extent** %8, align 8
  %13 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %20 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %23 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @EXT4_CLUSTERS_PER_GROUP(i32 %24)
  %26 = icmp sgt i64 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %30 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %33 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @EXT4_CLUSTERS_PER_GROUP(i32 %34)
  %36 = icmp sge i64 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %40 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AC_STATUS_CONTINUE, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %47 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %51 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EXT4_MB_HINT_FIRST, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %3
  %58 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %59 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %60 = bitcast %struct.ext4_free_extent* %58 to i8*
  %61 = bitcast %struct.ext4_free_extent* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %63 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %64 = call i32 @ext4_mb_use_best_found(%struct.ext4_allocation_context* %62, %struct.ext4_buddy* %63)
  br label %140

65:                                               ; preds = %3
  %66 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %67 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %70 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %75 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %76 = bitcast %struct.ext4_free_extent* %74 to i8*
  %77 = bitcast %struct.ext4_free_extent* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %79 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %80 = call i32 @ext4_mb_use_best_found(%struct.ext4_allocation_context* %78, %struct.ext4_buddy* %79)
  br label %140

81:                                               ; preds = %65
  %82 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %83 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %88 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %89 = bitcast %struct.ext4_free_extent* %87 to i8*
  %90 = bitcast %struct.ext4_free_extent* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  br label %140

91:                                               ; preds = %81
  %92 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %93 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %96 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %101 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %104 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %109 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %110 = bitcast %struct.ext4_free_extent* %108 to i8*
  %111 = bitcast %struct.ext4_free_extent* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  br label %112

112:                                              ; preds = %107, %99
  br label %136

113:                                              ; preds = %91
  %114 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %115 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %8, align 8
  %118 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %113
  %122 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %123 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %126 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %7, align 8
  %131 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %5, align 8
  %132 = bitcast %struct.ext4_free_extent* %130 to i8*
  %133 = bitcast %struct.ext4_free_extent* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 16, i1 false)
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134, %113
  br label %136

136:                                              ; preds = %135, %112
  %137 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %4, align 8
  %138 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %139 = call i32 @ext4_mb_check_limits(%struct.ext4_allocation_context* %137, %struct.ext4_buddy* %138, i32 0)
  br label %140

140:                                              ; preds = %136, %86, %73, %57
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ext4_mb_use_best_found(%struct.ext4_allocation_context*, %struct.ext4_buddy*) #1

declare dso_local i32 @ext4_mb_check_limits(%struct.ext4_allocation_context*, %struct.ext4_buddy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
