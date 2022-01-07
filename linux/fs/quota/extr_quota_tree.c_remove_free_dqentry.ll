; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_remove_free_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_remove_free_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i64, i32 }
%struct.qt_disk_dqdbheader = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't write block (%u) with free entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, i8*, i64)* @remove_free_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_free_dqentry(%struct.qtree_mem_dqinfo* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qt_disk_dqdbheader*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %14 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @getdqbuf(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %18, %struct.qt_disk_dqdbheader** %9, align 8
  %19 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %20 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %24 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %119

32:                                               ; preds = %3
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %36, i64 %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %115

43:                                               ; preds = %35
  %44 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %45 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to %struct.qt_disk_dqdbheader*
  %49 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %50, i64 %51, i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %115

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %62, i64 %63, i8* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %115

69:                                               ; preds = %61
  %70 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %71 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = bitcast i8* %73 to %struct.qt_disk_dqdbheader*
  %75 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %76, i64 %77, i8* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %115

83:                                               ; preds = %69
  br label %95

84:                                               ; preds = %58
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %87 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %89 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %92 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mark_info_dirty(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %84, %83
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = call i32 @cpu_to_le32(i32 0)
  %99 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %100 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %102 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %103, i64 %104, i8* %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %110 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @quota_error(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %108, %95
  store i32 0, i32* %4, align 4
  br label %119

115:                                              ; preds = %82, %68, %56, %42
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @kfree(i8* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %114, %29
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i64, i8*) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i64, i8*) #1

declare dso_local i32 @mark_info_dirty(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @quota_error(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
