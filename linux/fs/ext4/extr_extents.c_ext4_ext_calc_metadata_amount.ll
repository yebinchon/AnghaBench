; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_calc_metadata_amount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_calc_metadata_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_inode_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_calc_metadata_amount(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %9)
  store %struct.ext4_inode_info* %10, %struct.ext4_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %2
  %25 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %26 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %32 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %33 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %43 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = srem i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %55 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = srem i32 %56, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %74

69:                                               ; preds = %53
  %70 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %76 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %24, %2
  %81 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %82 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %85 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @ext_depth(%struct.inode* %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %74
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
