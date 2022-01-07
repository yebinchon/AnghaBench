; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_commit_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_alloc_commit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.pnfs_commit_bucket* }
%struct.pnfs_commit_bucket = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nfs4_ff_layout_segment = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFS_INVALID_STABLE_HOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32)* @ff_layout_alloc_commit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_alloc_commit_info(%struct.pnfs_layout_segment* %0, %struct.nfs_commit_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_ff_layout_segment*, align 8
  %9 = alloca %struct.pnfs_commit_bucket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %13 = call %struct.nfs4_ff_layout_segment* @FF_LAYOUT_LSEG(%struct.pnfs_layout_segment* %12)
  store %struct.nfs4_ff_layout_segment* %13, %struct.nfs4_ff_layout_segment** %8, align 8
  %14 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %8, align 8
  %23 = call i32 @ff_layout_get_lseg_count(%struct.nfs4_ff_layout_segment* %22)
  %24 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %25 = call i32 @FF_LAYOUT_MIRROR_COUNT(%struct.pnfs_layout_segment* %24)
  %26 = mul nsw i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.pnfs_commit_bucket* @kcalloc(i32 %27, i32 12, i32 %28)
  store %struct.pnfs_commit_bucket* %29, %struct.pnfs_commit_bucket** %9, align 8
  %30 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %31 = icmp ne %struct.pnfs_commit_bucket* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %95

35:                                               ; preds = %21
  %36 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %49 = call i32 @kfree(%struct.pnfs_commit_bucket* %48)
  br label %89

50:                                               ; preds = %35
  %51 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %52 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.pnfs_commit_bucket* %51, %struct.pnfs_commit_bucket** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %85, %50
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %66, i64 %68
  %70 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %69, i32 0, i32 2
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %72, i64 %74
  %76 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %75, i32 0, i32 1
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load i32, i32* @NFS_INVALID_STABLE_HOW, align 4
  %79 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %79, i64 %81
  %83 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %61

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88, %47
  %90 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %91 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %32, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.nfs4_ff_layout_segment* @FF_LAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @ff_layout_get_lseg_count(%struct.nfs4_ff_layout_segment*) #1

declare dso_local i32 @FF_LAYOUT_MIRROR_COUNT(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.pnfs_commit_bucket* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.pnfs_commit_bucket*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
