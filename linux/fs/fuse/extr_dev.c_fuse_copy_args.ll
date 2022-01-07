; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32 }
%struct.fuse_arg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, i32, i32, %struct.fuse_arg*, i32)* @fuse_copy_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_args(%struct.fuse_copy_state* %0, i32 %1, i32 %2, %struct.fuse_arg* %3, i32 %4) #0 {
  %6 = alloca %struct.fuse_copy_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fuse_arg*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fuse_arg* %3, %struct.fuse_arg** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %52, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %55

23:                                               ; preds = %21
  %24 = load %struct.fuse_arg*, %struct.fuse_arg** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %24, i64 %26
  store %struct.fuse_arg* %27, %struct.fuse_arg** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %37 = load %struct.fuse_arg*, %struct.fuse_arg** %13, align 8
  %38 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @fuse_copy_pages(%struct.fuse_copy_state* %36, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %51

42:                                               ; preds = %32, %23
  %43 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %6, align 8
  %44 = load %struct.fuse_arg*, %struct.fuse_arg** %13, align 8
  %45 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fuse_arg*, %struct.fuse_arg** %13, align 8
  %48 = getelementptr inbounds %struct.fuse_arg, %struct.fuse_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fuse_copy_one(%struct.fuse_copy_state* %43, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %14

55:                                               ; preds = %21
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @fuse_copy_pages(%struct.fuse_copy_state*, i32, i32) #1

declare dso_local i32 @fuse_copy_one(%struct.fuse_copy_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
