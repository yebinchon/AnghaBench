; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_insert_extent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_insert_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_map = type { i32, %struct.uid_gid_extent*, %struct.uid_gid_extent*, i32* }
%struct.uid_gid_extent = type { i32 }

@UID_GID_MAP_MAX_BASE_EXTENTS = common dso_local global i32 0, align 4
@UID_GID_MAP_MAX_EXTENTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uid_gid_map*, %struct.uid_gid_extent*)* @insert_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_extent(%struct.uid_gid_map* %0, %struct.uid_gid_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uid_gid_map*, align 8
  %5 = alloca %struct.uid_gid_extent*, align 8
  %6 = alloca %struct.uid_gid_extent*, align 8
  %7 = alloca %struct.uid_gid_extent*, align 8
  store %struct.uid_gid_map* %0, %struct.uid_gid_map** %4, align 8
  store %struct.uid_gid_extent* %1, %struct.uid_gid_extent** %5, align 8
  %8 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %9 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load i32, i32* @UID_GID_MAP_MAX_EXTENTS, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.uid_gid_extent* @kmalloc_array(i32 %14, i32 4, i32 %15)
  store %struct.uid_gid_extent* %16, %struct.uid_gid_extent** %7, align 8
  %17 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %18 = icmp ne %struct.uid_gid_extent* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %13
  %23 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %24 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %25 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %24, i32 0, i32 2
  %26 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %25, align 8
  %27 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %28 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memcpy(%struct.uid_gid_extent* %23, %struct.uid_gid_extent* %26, i32 %32)
  %34 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %7, align 8
  %35 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %36 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %35, i32 0, i32 1
  store %struct.uid_gid_extent* %34, %struct.uid_gid_extent** %36, align 8
  %37 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %38 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %22, %2
  %40 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %41 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %47 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %46, i32 0, i32 2
  %48 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %47, align 8
  %49 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %50 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %48, i64 %52
  store %struct.uid_gid_extent* %53, %struct.uid_gid_extent** %6, align 8
  br label %63

54:                                               ; preds = %39
  %55 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %56 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %55, i32 0, i32 1
  %57 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %56, align 8
  %58 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %59 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %57, i64 %61
  store %struct.uid_gid_extent* %62, %struct.uid_gid_extent** %6, align 8
  br label %63

63:                                               ; preds = %54, %45
  %64 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %6, align 8
  %65 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %66 = bitcast %struct.uid_gid_extent* %64 to i8*
  %67 = bitcast %struct.uid_gid_extent* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %69 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.uid_gid_extent* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.uid_gid_extent*, %struct.uid_gid_extent*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
