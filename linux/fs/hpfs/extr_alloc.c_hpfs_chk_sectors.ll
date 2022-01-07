; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_chk_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_chk_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"sector(s) '%s' badly placed at %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_chk_sectors(%struct.super_block* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 18
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %16, %4
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hpfs_error(%struct.super_block* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  store i32 1, i32* %5, align 4
  br label %59

33:                                               ; preds = %19
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @chk_if_allocated(%struct.super_block* %45, i32 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %59

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %40

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %33
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %52, %28
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i64 @chk_if_allocated(%struct.super_block*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
