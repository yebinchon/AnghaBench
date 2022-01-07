; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_convert_objectid_map_v1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_convert_objectid_map_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32, i32, i32 }
%struct.reiserfs_super_block_v1 = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_convert_objectid_map_v1(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_super_block_v1*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %10)
  store %struct.reiserfs_super_block* %11, %struct.reiserfs_super_block** %3, align 8
  %12 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %13 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SB_SIZE, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = udiv i64 %20, 2
  %22 = mul i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %25 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = call %struct.TYPE_2__* @SB_BUFFER_WITH_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.reiserfs_super_block_v1*
  store %struct.reiserfs_super_block_v1* %30, %struct.reiserfs_super_block_v1** %7, align 8
  %31 = load %struct.reiserfs_super_block_v1*, %struct.reiserfs_super_block_v1** %7, align 8
  %32 = getelementptr inbounds %struct.reiserfs_super_block_v1, %struct.reiserfs_super_block_v1* %31, i64 1
  %33 = bitcast %struct.reiserfs_super_block_v1* %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %1
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %1
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %72, %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  store i32 %63, i32* %71, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @set_sb_oid_maxsize(%struct.reiserfs_super_block* %76, i32 %77)
  %79 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %80 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memset(i32 %81, i32 0, i32 4)
  %83 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %84 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @generate_random_uuid(i32 %85)
  %87 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %88 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memset(i32 %89, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @sb_oid_cursize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @sb_oid_maxsize(%struct.reiserfs_super_block*) #1

declare dso_local %struct.TYPE_2__* @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_oid_cursize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @set_sb_oid_maxsize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @generate_random_uuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
