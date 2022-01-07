; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.orangefs_dir* }
%struct.orangefs_dir = type { i32, i64, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ORANGEFS_ITERATE_START = common dso_local global i32 0, align 4
@PART_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @orangefs_dir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_dir_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.orangefs_dir*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.orangefs_dir* @kmalloc(i32 32, i32 %7)
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  store %struct.orangefs_dir* %8, %struct.orangefs_dir** %10, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.orangefs_dir*, %struct.orangefs_dir** %12, align 8
  %14 = icmp ne %struct.orangefs_dir* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.orangefs_dir*, %struct.orangefs_dir** %20, align 8
  store %struct.orangefs_dir* %21, %struct.orangefs_dir** %6, align 8
  %22 = load i32, i32* @ORANGEFS_ITERATE_START, align 4
  %23 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %24 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %26 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @PART_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %30 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %32 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.orangefs_dir* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
