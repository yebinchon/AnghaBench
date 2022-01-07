; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_activate_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_activate_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32, i32, i64, i64, i64 }
%struct.iomap_swapfile_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"swapon: file is inline\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"swapon: file has unallocated extents\0A\00", align 1
@IOMAP_F_DIRTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"swapon: file is not committed\0A\00", align 1
@IOMAP_F_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"swapon: file has shared extents\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"swapon: file is on multiple devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*, %struct.iomap*)* @iomap_swapfile_activate_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_swapfile_activate_actor(%struct.inode* %0, i32 %1, i32 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.iomap_swapfile_info*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.iomap_swapfile_info*
  store %struct.iomap_swapfile_info* %15, %struct.iomap_swapfile_info** %12, align 8
  %16 = load %struct.iomap*, %struct.iomap** %11, align 8
  %17 = getelementptr inbounds %struct.iomap, %struct.iomap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %24 [
    i32 129, label %19
    i32 128, label %19
    i32 130, label %20
  ]

19:                                               ; preds = %5, %5
  br label %28

20:                                               ; preds = %5
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %113

24:                                               ; preds = %5
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %113

28:                                               ; preds = %19
  %29 = load %struct.iomap*, %struct.iomap** %11, align 8
  %30 = getelementptr inbounds %struct.iomap, %struct.iomap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IOMAP_F_DIRTY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %113

39:                                               ; preds = %28
  %40 = load %struct.iomap*, %struct.iomap** %11, align 8
  %41 = getelementptr inbounds %struct.iomap, %struct.iomap* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IOMAP_F_SHARED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %113

50:                                               ; preds = %39
  %51 = load %struct.iomap*, %struct.iomap** %11, align 8
  %52 = getelementptr inbounds %struct.iomap, %struct.iomap* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %55 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %113

64:                                               ; preds = %50
  %65 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %66 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %72 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %71, i32 0, i32 0
  %73 = load %struct.iomap*, %struct.iomap** %11, align 8
  %74 = call i32 @memcpy(%struct.TYPE_4__* %72, %struct.iomap* %73, i32 16)
  br label %111

75:                                               ; preds = %64
  %76 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %77 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %81 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %79, %83
  %85 = load %struct.iomap*, %struct.iomap** %11, align 8
  %86 = getelementptr inbounds %struct.iomap, %struct.iomap* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %75
  %90 = load %struct.iomap*, %struct.iomap** %11, align 8
  %91 = getelementptr inbounds %struct.iomap, %struct.iomap* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %94 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %92
  store i64 %97, i64* %95, align 8
  br label %110

98:                                               ; preds = %75
  %99 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %100 = call i32 @iomap_swapfile_add_extent(%struct.iomap_swapfile_info* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %113

105:                                              ; preds = %98
  %106 = load %struct.iomap_swapfile_info*, %struct.iomap_swapfile_info** %12, align 8
  %107 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %106, i32 0, i32 0
  %108 = load %struct.iomap*, %struct.iomap** %11, align 8
  %109 = call i32 @memcpy(%struct.TYPE_4__* %107, %struct.iomap* %108, i32 16)
  br label %110

110:                                              ; preds = %105, %89
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %103, %60, %46, %35, %24, %20
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.iomap*, i32) #1

declare dso_local i32 @iomap_swapfile_add_extent(%struct.iomap_swapfile_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
