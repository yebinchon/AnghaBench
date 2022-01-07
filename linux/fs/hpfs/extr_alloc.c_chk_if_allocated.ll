; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_chk_if_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_chk_if_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"chk\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sector '%s' - %08x not allocated in bitmap\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"sector '%s' - %08x not allocated in directory bitmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i8*)* @chk_if_allocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_if_allocated(%struct.super_block* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.quad_buffer_head, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 14
  %14 = call i32* @hpfs_map_bitmap(%struct.super_block* %11, i32 %13, %struct.quad_buffer_head* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 16383
  %21 = ashr i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 31
  %28 = lshr i32 %25, %27
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hpfs_error(%struct.super_block* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  br label %89

36:                                               ; preds = %17
  %37 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %38, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %49, %53
  %55 = icmp slt i32 %45, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %57, %61
  %63 = sdiv i32 %62, 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %64, %struct.quad_buffer_head* %8)
  store i32* %65, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %91

68:                                               ; preds = %56
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = lshr i32 %70, 5
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 31
  %78 = lshr i32 %75, %77
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @hpfs_error(%struct.super_block* %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %84)
  br label %89

86:                                               ; preds = %68
  %87 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %88

88:                                               ; preds = %86, %44, %36
  store i32 0, i32* %4, align 4
  br label %92

89:                                               ; preds = %81, %31
  %90 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %91

91:                                               ; preds = %89, %67, %16
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
