; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_hard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i64, i32, %struct.TYPE_32__*, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_32__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_29__*, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64, i32 (i32)*, %struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_32__*, i64)* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, i32, i32)* @xfs_dir2_sf_addname_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_sf_addname_hard(%struct.TYPE_33__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  store %struct.TYPE_31__* %21, %struct.TYPE_31__** %9, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %18, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i8* @kmem_alloc(i32 %32, i32 0)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %35, %struct.TYPE_32__** %16, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @memcpy(%struct.TYPE_32__* %36, %struct.TYPE_32__* %37, i32 %38)
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %46 = call %struct.TYPE_32__* @xfs_dir2_sf_firstentry(%struct.TYPE_32__* %45)
  store %struct.TYPE_32__* %46, %struct.TYPE_32__** %15, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %57 = bitcast %struct.TYPE_32__* %56 to i8*
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = icmp eq i8* %57, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %79, %3
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %70 = call i64 @xfs_dir2_sf_get_offset(%struct.TYPE_32__* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i64, i64* %12, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %108

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %85(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %80, %90
  store i64 %91, i64* %13, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*)*, %struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*)** %95, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %99 = call %struct.TYPE_32__* %96(%struct.TYPE_32__* %97, %struct.TYPE_32__* %98)
  store %struct.TYPE_32__* %99, %struct.TYPE_32__** %15, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %101 = bitcast %struct.TYPE_32__* %100 to i8*
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = icmp eq i8* %101, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %10, align 4
  br label %64

108:                                              ; preds = %77, %64
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 0, %110
  %112 = load i32, i32* @XFS_DATA_FORK, align 4
  %113 = call i32 @xfs_idata_realloc(%struct.TYPE_31__* %109, i32 %111, i32 %112)
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @XFS_DATA_FORK, align 4
  %117 = call i32 @xfs_idata_realloc(%struct.TYPE_31__* %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %123, %struct.TYPE_32__** %18, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %125 = bitcast %struct.TYPE_32__* %124 to i8*
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %127 = bitcast %struct.TYPE_32__* %126 to i8*
  %128 = ptrtoint i8* %125 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @memcpy(%struct.TYPE_32__* %132, %struct.TYPE_32__* %133, i32 %134)
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %137 = bitcast %struct.TYPE_32__* %136 to i8*
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = bitcast i8* %140 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %141, %struct.TYPE_32__** %17, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @xfs_dir2_sf_put_offset(%struct.TYPE_32__* %147, i64 %148)
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %151, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %154, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @memcpy(%struct.TYPE_32__* %152, %struct.TYPE_32__* %155, i32 %158)
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 4
  %164 = load i32 (%struct.TYPE_32__*, %struct.TYPE_32__*, i64)*, i32 (%struct.TYPE_32__*, %struct.TYPE_32__*, i64)** %163, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 %164(%struct.TYPE_32__* %165, %struct.TYPE_32__* %166, i64 %169)
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 3
  %175 = load i32 (%struct.TYPE_32__*, i32)*, i32 (%struct.TYPE_32__*, i32)** %174, align 8
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %175(%struct.TYPE_32__* %176, i32 %179)
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @XFS_DIR2_MAX_SHORT_INUM, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %108
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %193, %190, %108
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %198
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*)*, %struct.TYPE_32__* (%struct.TYPE_32__*, %struct.TYPE_32__*)** %205, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %209 = call %struct.TYPE_32__* %206(%struct.TYPE_32__* %207, %struct.TYPE_32__* %208)
  store %struct.TYPE_32__* %209, %struct.TYPE_32__** %17, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %11, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i32 @memcpy(%struct.TYPE_32__* %210, %struct.TYPE_32__* %211, i32 %214)
  br label %216

216:                                              ; preds = %201, %198
  %217 = load i8*, i8** %8, align 8
  %218 = call i32 @kmem_free(i8* %217)
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %224 = call i32 @xfs_dir2_sf_check(%struct.TYPE_33__* %223)
  ret void
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @xfs_dir2_sf_firstentry(%struct.TYPE_32__*) #1

declare dso_local i64 @xfs_dir2_sf_get_offset(%struct.TYPE_32__*) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_put_offset(%struct.TYPE_32__*, i64) #1

declare dso_local i32 @kmem_free(i8*) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
