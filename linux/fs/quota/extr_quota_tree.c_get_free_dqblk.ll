; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_get_free_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_get_free_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32, i32, i32 }
%struct.qt_disk_dqdbheader = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*)* @get_free_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_free_dqblk(%struct.qtree_mem_dqinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtree_mem_dqinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qt_disk_dqdbheader*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %3, align 8
  %8 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %9 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @getdqbuf(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %13, %struct.qt_disk_dqdbheader** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %21 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %26 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %28, i32 %29, i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %71

35:                                               ; preds = %24
  %36 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %5, align 8
  %37 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %41 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %62

42:                                               ; preds = %19
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %45 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memset(i8* %43, i32 0, i32 %46)
  %48 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %49 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %50 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %48, i32 %51, i8* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %71

57:                                               ; preds = %42
  %58 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %59 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %35
  %63 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %64 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %3, align 8
  %67 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mark_info_dirty(i32 %65, i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %62, %56, %34
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %16
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @mark_info_dirty(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
