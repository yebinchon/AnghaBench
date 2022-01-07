; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_mappings_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_mappings_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_map = type { i32, %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i64, i64, i64 }

@UID_GID_MAP_MAX_BASE_EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uid_gid_map*, %struct.uid_gid_extent*)* @mappings_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mappings_overlap(%struct.uid_gid_map* %0, %struct.uid_gid_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uid_gid_map*, align 8
  %5 = alloca %struct.uid_gid_extent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.uid_gid_extent*, align 8
  store %struct.uid_gid_map* %0, %struct.uid_gid_map** %4, align 8
  store %struct.uid_gid_extent* %1, %struct.uid_gid_extent** %5, align 8
  %16 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %17 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %20 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %24 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %5, align 8
  %30 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %97, %2
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %37 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %34
  %41 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %42 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %48 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %47, i32 0, i32 2
  %49 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %49, i64 %51
  store %struct.uid_gid_extent* %52, %struct.uid_gid_extent** %15, align 8
  br label %60

53:                                               ; preds = %40
  %54 = load %struct.uid_gid_map*, %struct.uid_gid_map** %4, align 8
  %55 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %54, i32 0, i32 1
  %56 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %56, i64 %58
  store %struct.uid_gid_extent* %59, %struct.uid_gid_extent** %15, align 8
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %15, align 8
  %62 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %15, align 8
  %65 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %15, align 8
  %69 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = sub nsw i64 %71, 1
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %15, align 8
  %75 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = sub nsw i64 %77, 1
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %60
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %101

87:                                               ; preds = %82, %60
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %101

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %34

100:                                              ; preds = %34
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %95, %86
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
