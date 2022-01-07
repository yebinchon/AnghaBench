; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_da_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_da_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32*, %struct.TYPE_4__, %struct.xfs_da_geometry*, %struct.xfs_da_geometry*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.xfs_da_geometry = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@XFS_SB_VERSION_DIRV2BIT = common dso_local global i32 0, align 4
@XFS_MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@xfs_ascii_ci_nameops = common dso_local global i32 0, align 4
@xfs_default_nameops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_mount(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_da_geometry*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @XFS_SB_VERSION_DIRV2BIT, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 1
  %15 = call i64 @xfs_dir2_dirblock_bytes(%struct.TYPE_4__* %14)
  %16 = load i64, i64* @XFS_MAX_BLOCKSIZE, align 8
  %17 = icmp sle i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %21 = call %struct.TYPE_5__* @xfs_dir_get_ops(%struct.xfs_mount* %20, i32* null)
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %22, i32 0, i32 4
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %25 = call i32 @xfs_nondir_get_ops(%struct.xfs_mount* %24, i32* null)
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @KM_MAYFAIL, align 4
  %34 = call i8* @kmem_zalloc(i32 48, i32 %33)
  %35 = bitcast i8* %34 to %struct.xfs_da_geometry*
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %36, i32 0, i32 3
  store %struct.xfs_da_geometry* %35, %struct.xfs_da_geometry** %37, align 8
  %38 = load i32, i32* @KM_MAYFAIL, align 4
  %39 = call i8* @kmem_zalloc(i32 48, i32 %38)
  %40 = bitcast i8* %39 to %struct.xfs_da_geometry*
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %42 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %41, i32 0, i32 2
  store %struct.xfs_da_geometry* %40, %struct.xfs_da_geometry** %42, align 8
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %44 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %43, i32 0, i32 3
  %45 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %44, align 8
  %46 = icmp ne %struct.xfs_da_geometry* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %48, i32 0, i32 2
  %50 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %49, align 8
  %51 = icmp ne %struct.xfs_da_geometry* %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 3
  %55 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %54, align 8
  %56 = call i32 @kmem_free(%struct.xfs_da_geometry* %55)
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 2
  %59 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %58, align 8
  %60 = call i32 @kmem_free(%struct.xfs_da_geometry* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %176

63:                                               ; preds = %47
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %65 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %64, i32 0, i32 3
  %66 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %65, align 8
  store %struct.xfs_da_geometry* %66, %struct.xfs_da_geometry** %4, align 8
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %72 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %70, %74
  %76 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %79 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %83 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %85 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %84, i32 0, i32 1
  %86 = call i64 @xfs_dir2_dirblock_bytes(%struct.TYPE_4__* %85)
  %87 = trunc i64 %86 to i32
  %88 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %89 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %91 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 1, %93
  %95 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %96 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %98 = load i32, i32* @XFS_DIR2_DATA_OFFSET, align 4
  %99 = call i8* @xfs_dir2_byte_to_da(%struct.xfs_da_geometry* %97, i32 %98)
  %100 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %101 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %100, i32 0, i32 8
  store i8* %99, i8** %101, align 8
  %102 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %103 = load i32, i32* @XFS_DIR2_LEAF_OFFSET, align 4
  %104 = call i8* @xfs_dir2_byte_to_da(%struct.xfs_da_geometry* %102, i32 %103)
  %105 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %106 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %108 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %109 = call i8* @xfs_dir2_byte_to_da(%struct.xfs_da_geometry* %107, i32 %108)
  %110 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %111 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %113 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sdiv i32 %116, 4
  %118 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %119 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %121 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 37
  %124 = sdiv i32 %123, 100
  %125 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %126 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %128 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %127, i32 0, i32 2
  %129 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %128, align 8
  store %struct.xfs_da_geometry* %129, %struct.xfs_da_geometry** %4, align 8
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %131 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %135 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %137 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %141 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %143 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 1, %144
  %146 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %147 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %149 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %148, i32 0, i32 3
  store i32 1, i32* %149, align 4
  %150 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %151 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sdiv i32 %154, 4
  %156 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %157 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %159 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 37
  %162 = sdiv i32 %161, 100
  %163 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %164 = getelementptr inbounds %struct.xfs_da_geometry, %struct.xfs_da_geometry* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %166 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %165, i32 0, i32 1
  %167 = call i64 @xfs_sb_version_hasasciici(%struct.TYPE_4__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %63
  %170 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %171 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %170, i32 0, i32 0
  store i32* @xfs_ascii_ci_nameops, i32** %171, align 8
  br label %175

172:                                              ; preds = %63
  %173 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %174 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %173, i32 0, i32 0
  store i32* @xfs_default_nameops, i32** %174, align 8
  br label %175

175:                                              ; preds = %172, %169
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %52
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @xfs_dir2_dirblock_bytes(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @xfs_dir_get_ops(%struct.xfs_mount*, i32*) #1

declare dso_local i32 @xfs_nondir_get_ops(%struct.xfs_mount*, i32*) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_da_geometry*) #1

declare dso_local i8* @xfs_dir2_byte_to_da(%struct.xfs_da_geometry*, i32) #1

declare dso_local i64 @xfs_sb_version_hasasciici(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
