; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_buf_map_from_irec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_buf_map_from_irec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_buf_map = type { i32, i32 }
%struct.xfs_bmbt_irec = type { i64, i32 }

@KM_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_buf_map**, i32*, %struct.xfs_bmbt_irec*, i32)* @xfs_buf_map_from_irec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_buf_map_from_irec(%struct.xfs_mount* %0, %struct.xfs_buf_map** %1, i32* %2, %struct.xfs_bmbt_irec* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_buf_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_bmbt_irec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_buf_map*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_buf_map** %1, %struct.xfs_buf_map*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.xfs_bmbt_irec* %3, %struct.xfs_bmbt_irec** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @KM_NOFS, align 4
  %31 = call %struct.xfs_buf_map* @kmem_zalloc(i32 %29, i32 %30)
  store %struct.xfs_buf_map* %31, %struct.xfs_buf_map** %12, align 8
  %32 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %33 = icmp ne %struct.xfs_buf_map* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %102

37:                                               ; preds = %25
  %38 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %39 = load %struct.xfs_buf_map**, %struct.xfs_buf_map*** %8, align 8
  store %struct.xfs_buf_map* %38, %struct.xfs_buf_map** %39, align 8
  br label %40

40:                                               ; preds = %37, %5
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.xfs_buf_map**, %struct.xfs_buf_map*** %8, align 8
  %44 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %43, align 8
  store %struct.xfs_buf_map* %44, %struct.xfs_buf_map** %12, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %98, %40
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %45
  %51 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %51, i64 %53
  %55 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %60, i64 %62
  %64 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HOLESTARTBLOCK, align 8
  %67 = icmp ne i64 %65, %66
  br label %68

68:                                               ; preds = %59, %50
  %69 = phi i1 [ false, %50 ], [ %67, %59 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %73 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %73, i64 %75
  %77 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %72, i64 %78)
  %80 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %80, i64 %82
  %84 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %86 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %86, i64 %88
  %90 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %85, i32 %91)
  %93 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %93, i64 %95
  %97 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %68
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %45

101:                                              ; preds = %45
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %34
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_buf_map* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i64) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
