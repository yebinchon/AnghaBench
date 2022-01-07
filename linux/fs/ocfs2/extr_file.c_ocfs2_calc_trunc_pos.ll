; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_calc_trunc_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_calc_trunc_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*, i64, i64*, i64*, i64*, i64*, i32*)* @ocfs2_calc_trunc_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_calc_trunc_pos(%struct.inode* %0, %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_rec* %2, i64 %3, i64* %4, i64* %5, i64* %6, i64* %7, i32* %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %11, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %27 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %28 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %26, %struct.ocfs2_extent_rec* %27)
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %21, align 8
  %30 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %9
  %37 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = load i64*, i64** %14, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %21, align 8
  %43 = load i64*, i64** %16, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* %21, align 8
  %48 = load i64*, i64** %16, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i64*, i64** %16, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le32_to_cpu(i32 %54)
  %56 = sub nsw i64 %51, %55
  %57 = load i64*, i64** %15, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = load i64*, i64** %17, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le32_to_cpu(i32 %65)
  %67 = load i64*, i64** %16, align 8
  store i64 %66, i64* %67, align 8
  br label %109

68:                                               ; preds = %9
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %68
  %73 = load i64, i64* %13, align 8
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i64*, i64** %16, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i64, i64* %21, align 8
  %81 = load i64*, i64** %16, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i64*, i64** %16, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64*, i64** %15, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %90 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = sub nsw i64 %88, %92
  store i64 %93, i64* %20, align 8
  %94 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @le64_to_cpu(i32 %96)
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %20, align 8
  %102 = call i64 @ocfs2_clusters_to_blocks(i32 %100, i64 %101)
  %103 = add nsw i64 %97, %102
  %104 = load i64*, i64** %17, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64*, i64** %16, align 8
  store i64 %105, i64* %106, align 8
  br label %108

107:                                              ; preds = %68
  store i32 1, i32* %19, align 4
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %49
  %110 = load i32, i32* %19, align 4
  %111 = load i32*, i32** %18, align 8
  store i32 %110, i32* %111, align 4
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
