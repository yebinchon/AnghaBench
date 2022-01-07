; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [54 x i8] c"hpfs_map_bitmap called with bad parameter: %08x at %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid bitmap block pointer %08x -> %08x at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hpfs_map_bitmap(%struct.super_block* %0, i32 %1, %struct.quad_buffer_head* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.quad_buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 16383
  %18 = ashr i32 %17, 14
  store i32 %18, i32* %12, align 4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  store i32* null, i32** %5, align 8
  br label %74

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 4
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %34
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i8* %58)
  store i32* null, i32** %5, align 8
  br label %74

60:                                               ; preds = %46
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %8, align 8
  %64 = call i32* @hpfs_map_4sectors(%struct.super_block* %61, i32 %62, %struct.quad_buffer_head* %63, i32 4)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  %71 = call i32 @hpfs_prefetch_bitmap(%struct.super_block* %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %60
  %73 = load i32*, i32** %11, align 8
  store i32* %73, i32** %5, align 8
  br label %74

74:                                               ; preds = %72, %54, %28
  %75 = load i32*, i32** %5, align 8
  ret i32* %75
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32* @hpfs_map_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_prefetch_bitmap(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
