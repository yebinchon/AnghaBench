; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_find_delayed_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_find_delayed_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_status = type { i64, i32, i32 }

@ext4_es_is_delayed = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.extent_status*)* @ext4_find_delayed_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_find_delayed_extent(%struct.inode* %0, %struct.extent_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_status*, align 8
  %6 = alloca %struct.extent_status, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_status* %1, %struct.extent_status** %5, align 8
  %9 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %10 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %16 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %19 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %22 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @ext4_es_find_extent_range(%struct.inode* %14, i32* @ext4_es_is_delayed, i32 %17, i32 %25, %struct.extent_status* %6)
  %27 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %88

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %35 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %42 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %47 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = call i64 @min(i64 %45, i64 %49)
  %51 = trunc i64 %50 to i32
  %52 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %53 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %88

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %61 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  %64 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %65 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %54, %2
  %67 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %68 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.extent_status*, %struct.extent_status** %5, align 8
  %71 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  %77 = call i32 @ext4_es_find_extent_range(%struct.inode* %74, i32* @ext4_es_is_delayed, i32 %75, i32 %76, %struct.extent_status* %6)
  %78 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %82, i32* %8, align 4
  br label %86

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %38, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ext4_es_find_extent_range(%struct.inode*, i32*, i32, i32, %struct.extent_status*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
