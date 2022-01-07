; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_remap_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_remap_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_ADVISORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVL_DEDUPE = common dso_local global i32 0, align 4
@OVL_CLONE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)* @ovl_remap_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_remap_file_range(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %17 = load i32, i32* @REMAP_FILE_ADVISORY, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %60

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @OVL_DEDUPE, align 4
  store i32 %31, i32* %14, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @OVL_CLONE, align 4
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @OVL_DEDUPE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = call i32 @file_inode(%struct.file* %39)
  %41 = call i32 @ovl_inode_upper(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.file*, %struct.file** %10, align 8
  %45 = call i32 @file_inode(%struct.file* %44)
  %46 = call i32 @ovl_inode_upper(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %60

51:                                               ; preds = %43, %34
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.file*, %struct.file** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @ovl_copyfile(%struct.file* %52, i32 %53, %struct.file* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %51, %48, %22
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @ovl_inode_upper(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @ovl_copyfile(%struct.file*, i32, %struct.file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
