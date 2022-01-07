; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freefind_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freefind_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_data_hdr = type { i32 }
%struct.xfs_dir2_data_free = type { i64, i64 }
%struct.xfs_dir2_data_unused = type { i64 }

@XFS_DIR2_DATA_FD_COUNT = common dso_local global i64 0, align 8
@__this_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_free**)* @xfs_dir2_data_freefind_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_dir2_data_freefind_verify(%struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_unused* %2, %struct.xfs_dir2_data_free** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %7 = alloca %struct.xfs_dir2_data_free*, align 8
  %8 = alloca %struct.xfs_dir2_data_unused*, align 8
  %9 = alloca %struct.xfs_dir2_data_free**, align 8
  %10 = alloca %struct.xfs_dir2_data_free*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_hdr** %6, align 8
  store %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_free** %7, align 8
  store %struct.xfs_dir2_data_unused* %2, %struct.xfs_dir2_data_unused** %8, align 8
  store %struct.xfs_dir2_data_free** %3, %struct.xfs_dir2_data_free*** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.xfs_dir2_data_free**, %struct.xfs_dir2_data_free*** %9, align 8
  store %struct.xfs_dir2_data_free* null, %struct.xfs_dir2_data_free** %14, align 8
  %15 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %16 = bitcast %struct.xfs_dir2_data_unused* %15 to i8*
  %17 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %18 = bitcast %struct.xfs_dir2_data_hdr* %17 to i8*
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %23 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %22, i64 0
  store %struct.xfs_dir2_data_free* %23, %struct.xfs_dir2_data_free** %10, align 8
  br label %24

24:                                               ; preds = %139, %4
  %25 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %26 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %27 = load i64, i64* @XFS_DIR2_DATA_FD_COUNT, align 8
  %28 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %26, i64 %27
  %29 = icmp ult %struct.xfs_dir2_data_free* %25, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %24
  %31 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %32 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %37 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** @__this_address, align 8
  store i32* %41, i32** %5, align 8
  br label %148

42:                                               ; preds = %35
  store i32 1, i32* %13, align 4
  br label %139

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** @__this_address, align 8
  store i32* %47, i32** %5, align 8
  br label %148

48:                                               ; preds = %43
  %49 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %50 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @be16_to_cpu(i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  %56 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %57 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %60 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32*, i32** @__this_address, align 8
  store i32* %64, i32** %5, align 8
  br label %148

65:                                               ; preds = %55
  br label %104

66:                                               ; preds = %48
  %67 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %68 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @be16_to_cpu(i64 %69)
  %71 = load i64, i64* %11, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @be16_to_cpu(i64 %77)
  %79 = add nsw i64 %74, %78
  %80 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %81 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @be16_to_cpu(i64 %82)
  %84 = icmp sgt i64 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32*, i32** @__this_address, align 8
  store i32* %86, i32** %5, align 8
  br label %148

87:                                               ; preds = %73
  br label %103

88:                                               ; preds = %66
  %89 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %90 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @be16_to_cpu(i64 %91)
  %93 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %94 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @be16_to_cpu(i64 %95)
  %97 = add nsw i64 %92, %96
  %98 = load i64, i64* %11, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32*, i32** @__this_address, align 8
  store i32* %101, i32** %5, align 8
  br label %148

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %109 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @be16_to_cpu(i64 %110)
  %112 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %113 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @be16_to_cpu(i64 %114)
  %116 = icmp slt i64 %111, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32*, i32** @__this_address, align 8
  store i32* %118, i32** %5, align 8
  br label %148

119:                                              ; preds = %107, %104
  %120 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %121 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %122 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %121, i64 0
  %123 = icmp ugt %struct.xfs_dir2_data_free* %120, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %126 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %125, i64 -1
  %127 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @be16_to_cpu(i64 %128)
  %130 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %131 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %130, i64 0
  %132 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @be16_to_cpu(i64 %133)
  %135 = icmp slt i64 %129, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32*, i32** @__this_address, align 8
  store i32* %137, i32** %5, align 8
  br label %148

138:                                              ; preds = %124, %119
  br label %139

139:                                              ; preds = %138, %42
  %140 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %10, align 8
  %141 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %140, i32 1
  store %struct.xfs_dir2_data_free* %141, %struct.xfs_dir2_data_free** %10, align 8
  br label %24

142:                                              ; preds = %24
  %143 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %6, align 8
  %144 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %7, align 8
  %145 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %8, align 8
  %146 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(%struct.xfs_dir2_data_hdr* %143, %struct.xfs_dir2_data_free* %144, %struct.xfs_dir2_data_unused* %145)
  %147 = load %struct.xfs_dir2_data_free**, %struct.xfs_dir2_data_free*** %9, align 8
  store %struct.xfs_dir2_data_free* %146, %struct.xfs_dir2_data_free** %147, align 8
  store i32* null, i32** %5, align 8
  br label %148

148:                                              ; preds = %142, %136, %117, %100, %85, %63, %46, %40
  %149 = load i32*, i32** %5, align 8
  ret i32* %149
}

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(%struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_unused*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
