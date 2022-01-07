; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_inode_s = type { i32 }
%struct.orangefs_dir = type { i32, %struct.orangefs_dir_part* }
%struct.orangefs_dir_part = type { %struct.orangefs_dir_part*, i64 }
%struct.dentry = type { i32 }
%struct.dir_context = type { i32 }

@PART_MASK = common dso_local global i32 0, align 4
@PART_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*, %struct.dir_context*)* @orangefs_dir_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_dir_fill(%struct.orangefs_inode_s* %0, %struct.orangefs_dir* %1, %struct.dentry* %2, %struct.dir_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.orangefs_inode_s*, align 8
  %7 = alloca %struct.orangefs_dir*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca %struct.orangefs_dir_part*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.orangefs_inode_s* %0, %struct.orangefs_inode_s** %6, align 8
  store %struct.orangefs_dir* %1, %struct.orangefs_dir** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.dir_context* %3, %struct.dir_context** %9, align 8
  %13 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %14 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PART_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PART_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %23 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %22, i32 0, i32 1
  %24 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %23, align 8
  store %struct.orangefs_dir_part* %24, %struct.orangefs_dir_part** %10, align 8
  br label %25

25:                                               ; preds = %35, %4
  %26 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %27 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %26, i32 0, i32 0
  %28 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %27, align 8
  %29 = icmp ne %struct.orangefs_dir_part* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %11, align 8
  %38 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %39 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %38, i32 0, i32 0
  %40 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %39, align 8
  store %struct.orangefs_dir_part* %40, %struct.orangefs_dir_part** %10, align 8
  br label %25

41:                                               ; preds = %33
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %48 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %94

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %92, %51
  %53 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %54 = icmp ne %struct.orangefs_dir_part* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %57 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %93

62:                                               ; preds = %60
  %63 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %64 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %65 = call i32 @fill_from_part(%struct.orangefs_dir_part* %63, %struct.dir_context* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %71 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %94

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %93

77:                                               ; preds = %73
  %78 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %79 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PART_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @PART_SHIFT, align 4
  %84 = shl i32 1, %83
  %85 = add nsw i32 %82, %84
  %86 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %87 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %10, align 8
  %89 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %88, i32 0, i32 0
  %90 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %89, align 8
  store %struct.orangefs_dir_part* %90, %struct.orangefs_dir_part** %10, align 8
  br label %91

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  br label %52

93:                                               ; preds = %76, %60
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %68, %44
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @fill_from_part(%struct.orangefs_dir_part*, %struct.dir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
