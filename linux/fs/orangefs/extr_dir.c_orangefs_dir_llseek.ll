; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.orangefs_dir* }
%struct.orangefs_dir = type { i32, %struct.orangefs_dir_part*, i32 }
%struct.orangefs_dir_part = type { %struct.orangefs_dir_part* }

@ORANGEFS_ITERATE_START = common dso_local global i32 0, align 4
@PART_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @orangefs_dir_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_dir_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.orangefs_dir*, align 8
  %8 = alloca %struct.orangefs_dir_part*, align 8
  %9 = alloca %struct.orangefs_dir_part*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.orangefs_dir*, %struct.orangefs_dir** %11, align 8
  store %struct.orangefs_dir* %12, %struct.orangefs_dir** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %18 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %23 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %22, i32 0, i32 1
  %24 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %23, align 8
  store %struct.orangefs_dir_part* %24, %struct.orangefs_dir_part** %8, align 8
  br label %25

25:                                               ; preds = %28, %21
  %26 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %8, align 8
  %27 = icmp ne %struct.orangefs_dir_part* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %8, align 8
  %30 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %29, i32 0, i32 0
  %31 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %30, align 8
  store %struct.orangefs_dir_part* %31, %struct.orangefs_dir_part** %9, align 8
  %32 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %8, align 8
  %33 = call i32 @vfree(%struct.orangefs_dir_part* %32)
  %34 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %9, align 8
  store %struct.orangefs_dir_part* %34, %struct.orangefs_dir_part** %8, align 8
  br label %25

35:                                               ; preds = %25
  %36 = load i32, i32* @ORANGEFS_ITERATE_START, align 4
  %37 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %38 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %40 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %39, i32 0, i32 1
  store %struct.orangefs_dir_part* null, %struct.orangefs_dir_part** %40, align 8
  %41 = load i32, i32* @PART_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %44 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %15, %3
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @default_llseek(%struct.file* %46, i32 %47, i32 %48)
  ret i32 %49
}

declare dso_local i32 @vfree(%struct.orangefs_dir_part*) #1

declare dso_local i32 @default_llseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
