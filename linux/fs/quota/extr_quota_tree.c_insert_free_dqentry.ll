; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_insert_free_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_insert_free_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i64, i32 }
%struct.qt_disk_dqdbheader = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, i8*, i64)* @insert_free_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_free_dqentry(%struct.qtree_mem_dqinfo* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qt_disk_dqdbheader*, align 8
  %10 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %12 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @getdqbuf(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %16, %struct.qt_disk_dqdbheader** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %87

22:                                               ; preds = %3
  %23 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %24 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @cpu_to_le32(i64 %25)
  %27 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %28 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = call i8* @cpu_to_le32(i64 0)
  %30 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %9, align 8
  %31 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %32, i64 %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %83

39:                                               ; preds = %22
  %40 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %41 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %46 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %47 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %45, i64 %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %83

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = call i8* @cpu_to_le32(i64 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to %struct.qt_disk_dqdbheader*
  %59 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %61 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %62 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %60, i64 %63, i8* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %83

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @kfree(i8* %71)
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %75 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %77 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %80 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mark_info_dirty(i32 %78, i32 %81)
  store i32 0, i32* %4, align 4
  br label %87

83:                                               ; preds = %68, %53, %38
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %70, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i64, i8*) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mark_info_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
