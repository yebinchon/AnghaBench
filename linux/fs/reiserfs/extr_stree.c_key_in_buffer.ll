; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_key_in_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_key_in_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treepath = type { i64 }
%struct.cpu_key = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FIRST_PATH_ELEMENT_OFFSET = common dso_local global i64 0, align 8
@MAX_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"PAP-5050: pointer to the key(%p) is NULL or invalid path length(%d)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PAP-5060: device must not be NODEV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.treepath*, %struct.cpu_key*, %struct.super_block*)* @key_in_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_in_buffer(%struct.treepath* %0, %struct.cpu_key* %1, %struct.super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.treepath*, align 8
  %6 = alloca %struct.cpu_key*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.treepath* %0, %struct.treepath** %5, align 8
  store %struct.cpu_key* %1, %struct.cpu_key** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  %8 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %9 = icmp ne %struct.cpu_key* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.treepath*, %struct.treepath** %5, align 8
  %12 = getelementptr inbounds %struct.treepath, %struct.treepath* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FIRST_PATH_ELEMENT_OFFSET, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.treepath*, %struct.treepath** %5, align 8
  %18 = getelementptr inbounds %struct.treepath, %struct.treepath* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAX_HEIGHT, align 8
  %21 = icmp sgt i64 %19, %20
  br label %22

22:                                               ; preds = %16, %10, %3
  %23 = phi i1 [ true, %10 ], [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %26 = load %struct.treepath*, %struct.treepath** %5, align 8
  %27 = getelementptr inbounds %struct.treepath, %struct.treepath* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @RFALSE(i32 %24, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.cpu_key* %25, i64 %28)
  %30 = load %struct.treepath*, %struct.treepath** %5, align 8
  %31 = call %struct.TYPE_2__* @PATH_PLAST_BUFFER(%struct.treepath* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @RFALSE(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.treepath*, %struct.treepath** %5, align 8
  %39 = load %struct.super_block*, %struct.super_block** %7, align 8
  %40 = call i32 @get_lkey(%struct.treepath* %38, %struct.super_block* %39)
  %41 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %42 = call i32 @comp_keys(i32 %40, %struct.cpu_key* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %54

45:                                               ; preds = %22
  %46 = load %struct.treepath*, %struct.treepath** %5, align 8
  %47 = load %struct.super_block*, %struct.super_block** %7, align 8
  %48 = call i32 @get_rkey(%struct.treepath* %46, %struct.super_block* %47)
  %49 = load %struct.cpu_key*, %struct.cpu_key** %6, align 8
  %50 = call i32 @comp_keys(i32 %48, %struct.cpu_key* %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %44
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local i32 @comp_keys(i32, %struct.cpu_key*) #1

declare dso_local i32 @get_lkey(%struct.treepath*, %struct.super_block*) #1

declare dso_local i32 @get_rkey(%struct.treepath*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
