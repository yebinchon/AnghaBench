; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_block.c_get_block_length.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_block.c_get_block_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64* }
%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i32*, i32*, i32*)* @get_block_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @get_block_length(%struct.super_block* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.squashfs_sb_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %13, align 8
  store %struct.squashfs_sb_info* %14, %struct.squashfs_sb_info** %10, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.buffer_head* @sb_bread(%struct.super_block* %15, i32 %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %11, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %20 = icmp eq %struct.buffer_head* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %115

22:                                               ; preds = %4
  %23 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %10, align 8
  %24 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i8
  %40 = zext i8 %39 to i32
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %43 = call i32 @put_bh(%struct.buffer_head* %42)
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = call %struct.buffer_head* @sb_bread(%struct.super_block* %44, i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %11, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = icmp eq %struct.buffer_head* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %115

52:                                               ; preds = %30
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i8
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 1, i32* %64, align 4
  br label %113

65:                                               ; preds = %22
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i8
  %75 = zext i8 %74 to i32
  %76 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %78, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = or i32 %75, %87
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %90, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %10, align 8
  %96 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %65
  %100 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %101 = call i32 @put_bh(%struct.buffer_head* %100)
  %102 = load %struct.super_block*, %struct.super_block** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = call %struct.buffer_head* @sb_bread(%struct.super_block* %102, i32 %105)
  store %struct.buffer_head* %106, %struct.buffer_head** %11, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = icmp eq %struct.buffer_head* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %115

110:                                              ; preds = %99
  %111 = load i32*, i32** %8, align 8
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %65
  br label %113

113:                                              ; preds = %112, %52
  %114 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %114, %struct.buffer_head** %5, align 8
  br label %115

115:                                              ; preds = %113, %109, %51, %21
  %116 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %116
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
