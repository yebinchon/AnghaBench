; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.c__ubh_bread_.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.c__ubh_bread_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32, i32** }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.super_block = type { i32 }

@UFS_MAXFRAG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ufs_buffer_head* @_ubh_bread_(%struct.ufs_sb_private_info* %0, %struct.super_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ufs_buffer_head*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %16 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %25 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @UFS_MAXFRAG, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

32:                                               ; preds = %22
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.ufs_buffer_head* @kmalloc(i32 16, i32 %33)
  store %struct.ufs_buffer_head* %34, %struct.ufs_buffer_head** %10, align 8
  %35 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %36 = icmp ne %struct.ufs_buffer_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %41 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %44 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %64, %38
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.super_block*, %struct.super_block** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %51, %52
  %54 = call i32* @sb_bread(%struct.super_block* %50, i32 %53)
  %55 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %56 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %54, i32** %60, align 8
  %61 = icmp ne i32* %54, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %84

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %45

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @UFS_MAXFRAG, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %74 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  store %struct.ufs_buffer_head* %83, %struct.ufs_buffer_head** %5, align 8
  br label %104

84:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %91 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @brelse(i32* %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %85

101:                                              ; preds = %85
  %102 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %103 = call i32 @kfree(%struct.ufs_buffer_head* %102)
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

104:                                              ; preds = %101, %82, %37, %31, %21
  %105 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  ret %struct.ufs_buffer_head* %105
}

declare dso_local %struct.ufs_buffer_head* @kmalloc(i32, i32) #1

declare dso_local i32* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @kfree(%struct.ufs_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
