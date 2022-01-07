; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_alloc_flex_gd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_alloc_flex_gd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_new_flex_group_data = type { i64, %struct.ext4_new_flex_group_data*, i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_new_flex_group_data* (i64)* @alloc_flex_gd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_new_flex_group_data* @alloc_flex_gd(i64 %0) #0 {
  %2 = alloca %struct.ext4_new_flex_group_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ext4_new_flex_group_data*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.ext4_new_flex_group_data* @kmalloc(i32 24, i32 %5)
  store %struct.ext4_new_flex_group_data* %6, %struct.ext4_new_flex_group_data** %4, align 8
  %7 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %8 = icmp eq %struct.ext4_new_flex_group_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @UINT_MAX, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %51

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %20 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call i8* @kmalloc_array(i64 %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to %struct.ext4_new_flex_group_data*
  %25 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %26 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %25, i32 0, i32 1
  store %struct.ext4_new_flex_group_data* %24, %struct.ext4_new_flex_group_data** %26, align 8
  %27 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %28 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %27, i32 0, i32 1
  %29 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %28, align 8
  %30 = icmp eq %struct.ext4_new_flex_group_data* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %51

32:                                               ; preds = %17
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i8* @kmalloc_array(i64 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %40 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %32
  %45 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  store %struct.ext4_new_flex_group_data* %45, %struct.ext4_new_flex_group_data** %2, align 8
  br label %55

46:                                               ; preds = %43
  %47 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %48 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %47, i32 0, i32 1
  %49 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %48, align 8
  %50 = call i32 @kfree(%struct.ext4_new_flex_group_data* %49)
  br label %51

51:                                               ; preds = %46, %31, %16
  %52 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %4, align 8
  %53 = call i32 @kfree(%struct.ext4_new_flex_group_data* %52)
  br label %54

54:                                               ; preds = %51, %9
  store %struct.ext4_new_flex_group_data* null, %struct.ext4_new_flex_group_data** %2, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %2, align 8
  ret %struct.ext4_new_flex_group_data* %56
}

declare dso_local %struct.ext4_new_flex_group_data* @kmalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.ext4_new_flex_group_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
