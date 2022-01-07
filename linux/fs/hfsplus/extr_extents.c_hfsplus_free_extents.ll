; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_free_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_free_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_extent = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't free extent\0A\00", align 1
@EXTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" start: %u count: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.hfsplus_extent*, i64, i64)* @hfsplus_free_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_free_extents(%struct.super_block* %0, %struct.hfsplus_extent* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.hfsplus_extent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.hfsplus_extent* %1, %struct.hfsplus_extent** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %22 = call i32 @hfsplus_dump_extent(%struct.hfsplus_extent* %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %45, %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %28 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @be32_to_cpu(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %53

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %50

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %47 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %46, i32 1
  store %struct.hfsplus_extent* %47, %struct.hfsplus_extent** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %23

50:                                               ; preds = %39, %23
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %123

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %114, %53
  %55 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %56 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @be32_to_cpu(i64 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load %struct.super_block*, %struct.super_block** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @hfsplus_block_free(%struct.super_block* %63, i64 %64, i64 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EXTENT, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @hfs_dbg(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %77 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %79 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %9, align 8
  br label %106

83:                                               ; preds = %54
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @hfsplus_block_free(%struct.super_block* %87, i64 %90, i64 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EXTENT, align 4
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @hfs_dbg(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %83
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @cpu_to_be32(i64 %102)
  %104 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %105 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  store i64 0, i64* %9, align 8
  br label %106

106:                                              ; preds = %101, %75
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %12, align 4
  %117 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %118 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %117, i32 -1
  store %struct.hfsplus_extent* %118, %struct.hfsplus_extent** %7, align 8
  %119 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %120 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @be32_to_cpu(i64 %121)
  store i64 %122, i64* %10, align 8
  br label %54

123:                                              ; preds = %112, %50
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfsplus_dump_extent(%struct.hfsplus_extent*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @hfsplus_block_free(%struct.super_block*, i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
