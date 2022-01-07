; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_logdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_logdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_fsmap = type { i64, i64, i32, i64 }
%struct.ext4_getfsmap_info = type { %struct.TYPE_5__, i32, %struct.ext4_fsmap }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }

@EXT4_FMR_OWN_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_fsmap*, %struct.ext4_getfsmap_info*)* @ext4_getfsmap_logdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_logdev(%struct.super_block* %0, %struct.ext4_fsmap* %1, %struct.ext4_getfsmap_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_fsmap*, align 8
  %7 = alloca %struct.ext4_getfsmap_info*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.ext4_fsmap, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext4_fsmap* %1, %struct.ext4_fsmap** %6, align 8
  store %struct.ext4_getfsmap_info* %2, %struct.ext4_getfsmap_info** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.TYPE_6__* @EXT4_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %15 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %14, i32 0, i32 2
  %16 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %6, align 8
  %17 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %16, i64 0
  %18 = bitcast %struct.ext4_fsmap* %15 to i8*
  %19 = bitcast %struct.ext4_fsmap* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %21 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %24 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %23, i32 0, i32 0
  %25 = call i32 @memset(%struct.TYPE_5__* %24, i32 255, i32 12)
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %31 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %35 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %39 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @trace_ext4_fsmap_low_key(%struct.super_block* %26, i32 %29, i32 0, i64 %33, i64 %37, i32 %41)
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %45 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %48 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %52 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %56 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @trace_ext4_fsmap_high_key(%struct.super_block* %43, i32 %46, i32 0, i32 %50, i32 %54, i32 %58)
  %60 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %6, align 8
  %61 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %60, i64 0
  %62 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

66:                                               ; preds = %3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %9, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %9, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @EXT4_FMR_OWN_LOG, align 4
  %76 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %9, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %9, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %7, align 8
  %80 = call i32 @ext4_getfsmap_helper(%struct.super_block* %78, %struct.ext4_getfsmap_info* %79, %struct.ext4_fsmap* %9)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %66, %65
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_6__* @EXT4_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @trace_ext4_fsmap_low_key(%struct.super_block*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @trace_ext4_fsmap_high_key(%struct.super_block*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ext4_getfsmap_helper(%struct.super_block*, %struct.ext4_getfsmap_info*, %struct.ext4_fsmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
