; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { i32, i32, i32, %struct.orangefs_bufmap*, %struct.orangefs_bufmap*, i8*, i32, i32 }
%struct.ORANGEFS_dev_map_desc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.orangefs_bufmap* (%struct.ORANGEFS_dev_map_desc*)* @orangefs_bufmap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.orangefs_bufmap* @orangefs_bufmap_alloc(%struct.ORANGEFS_dev_map_desc* %0) #0 {
  %2 = alloca %struct.orangefs_bufmap*, align 8
  %3 = alloca %struct.ORANGEFS_dev_map_desc*, align 8
  %4 = alloca %struct.orangefs_bufmap*, align 8
  store %struct.ORANGEFS_dev_map_desc* %0, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 48, i32 %5)
  %7 = bitcast i8* %6 to %struct.orangefs_bufmap*
  store %struct.orangefs_bufmap* %7, %struct.orangefs_bufmap** %4, align 8
  %8 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %9 = icmp ne %struct.orangefs_bufmap* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %97

11:                                               ; preds = %1
  %12 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %13 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %16 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %18 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %21 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %3, align 8
  %23 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %26 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %28 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ilog2(i32 %29)
  %31 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %32 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %34 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BITS_PER_LONG, align 4
  %37 = call i32 @DIV_ROUND_UP(i32 %35, i32 %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.orangefs_bufmap*
  %41 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %42 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %41, i32 0, i32 3
  store %struct.orangefs_bufmap* %40, %struct.orangefs_bufmap** %42, align 8
  %43 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %44 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %43, i32 0, i32 3
  %45 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %44, align 8
  %46 = icmp ne %struct.orangefs_bufmap* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %11
  br label %94

48:                                               ; preds = %11
  %49 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %50 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kcalloc(i32 %51, i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.orangefs_bufmap*
  %55 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %56 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %55, i32 0, i32 4
  store %struct.orangefs_bufmap* %54, %struct.orangefs_bufmap** %56, align 8
  %57 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %58 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %57, i32 0, i32 4
  %59 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %58, align 8
  %60 = icmp ne %struct.orangefs_bufmap* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %89

62:                                               ; preds = %48
  %63 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %64 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sdiv i32 %65, %66
  %68 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %69 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %71 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kcalloc(i32 %72, i32 8, i32 %73)
  %75 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %76 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %78 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %62
  br label %84

82:                                               ; preds = %62
  %83 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  store %struct.orangefs_bufmap* %83, %struct.orangefs_bufmap** %2, align 8
  br label %98

84:                                               ; preds = %81
  %85 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %86 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %85, i32 0, i32 4
  %87 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %86, align 8
  %88 = call i32 @kfree(%struct.orangefs_bufmap* %87)
  br label %89

89:                                               ; preds = %84, %61
  %90 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %91 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %90, i32 0, i32 3
  %92 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %91, align 8
  %93 = call i32 @kfree(%struct.orangefs_bufmap* %92)
  br label %94

94:                                               ; preds = %89, %47
  %95 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %96 = call i32 @kfree(%struct.orangefs_bufmap* %95)
  br label %97

97:                                               ; preds = %94, %10
  store %struct.orangefs_bufmap* null, %struct.orangefs_bufmap** %2, align 8
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %2, align 8
  ret %struct.orangefs_bufmap* %99
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.orangefs_bufmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
