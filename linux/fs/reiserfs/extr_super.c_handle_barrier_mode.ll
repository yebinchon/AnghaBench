; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_barrier_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_barrier_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@REISERFS_BARRIER_FLUSH = common dso_local global i32 0, align 4
@REISERFS_BARRIER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"reiserfs: enabling write barrier flush mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"reiserfs: write barriers turned off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64)* @handle_barrier_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_barrier_mode(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @REISERFS_BARRIER_FLUSH, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @REISERFS_BARRIER_NONE, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %56

41:                                               ; preds = %20
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %42, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.super_block*, %struct.super_block** %3, align 8
  %50 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
