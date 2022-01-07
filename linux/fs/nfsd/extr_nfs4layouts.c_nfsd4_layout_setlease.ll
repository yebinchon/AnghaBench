; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_layout_setlease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4layouts.c_nfsd4_layout_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.nfs4_layout_stateid = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file_lock = type { i32, i32, i32, %struct.nfs4_layout_stateid*, i32, i32, i32* }

@nfsd4_layout_ops = common dso_local global %struct.TYPE_5__** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@nfsd4_layouts_lm_ops = common dso_local global i32 0, align 4
@FL_LAYOUT = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_layout_stateid*)* @nfsd4_layout_setlease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_layout_setlease(%struct.nfs4_layout_stateid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_layout_stateid*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_layout_stateid* %0, %struct.nfs4_layout_stateid** %3, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @nfsd4_layout_ops, align 8
  %7 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %6, i64 %9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %17, %struct.file_lock** %4, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %19 = icmp ne %struct.file_lock* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %16
  %24 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %25 = call i32 @locks_init_lock(%struct.file_lock* %24)
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 6
  store i32* @nfsd4_layouts_lm_ops, i32** %27, align 8
  %28 = load i32, i32* @FL_LAYOUT, align 4
  %29 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @F_RDLCK, align 4
  %32 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @OFFSET_MAX, align 4
  %35 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %38 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 3
  store %struct.nfs4_layout_stateid* %37, %struct.nfs4_layout_stateid** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nfs4_layout_stateid*, %struct.nfs4_layout_stateid** %3, align 8
  %46 = getelementptr inbounds %struct.nfs4_layout_stateid, %struct.nfs4_layout_stateid* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %53 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vfs_setlease(i32 %54, i32 %57, %struct.file_lock** %4, i32* null)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %23
  %62 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %63 = call i32 @locks_free_lock(%struct.file_lock* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %70

65:                                               ; preds = %23
  %66 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %67 = icmp ne %struct.file_lock* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %61, %20, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @vfs_setlease(i32, i32, %struct.file_lock**, i32*) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
