; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_ea_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_ea_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"ea #2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_ea_write(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  br label %18

18:                                               ; preds = %69, %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = lshr i32 %27, 9
  %29 = call i32 @anode_lookup(%struct.super_block* %25, i32 %26, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %93

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %35, 9
  %37 = add i32 %34, %36
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load %struct.super_block*, %struct.super_block** %8, align 8
  %40 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.super_block*, %struct.super_block** %8, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @hpfs_chk_sectors(%struct.super_block* %45, i32 %46, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %93

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.super_block*, %struct.super_block** %8, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub i32 %54, 1
  %56 = lshr i32 %55, 9
  %57 = call i8* @hpfs_map_sector(%struct.super_block* %52, i32 %53, %struct.buffer_head** %14, i32 %56)
  store i8* %57, i8** %15, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %93

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 511
  %63 = sub i32 512, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 511
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  %78 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %79 = call i32 @mark_buffer_dirty(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  %82 = load i32, i32* %17, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %13, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %18

92:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %59, %49, %31
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @anode_lookup(%struct.super_block*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
