; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_try_rgrp_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_try_rgrp_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_glock = type { i32, %struct.gfs2_inode* }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_rbm = type { i32, i32, %struct.gfs2_rgrpd* }

@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NO_BLOCK = common dso_local global i64 0, align 8
@gfs2_iopen_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rgrpd*, i64*, i64)* @try_rgrp_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_rgrp_unlink(%struct.gfs2_rgrpd* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_glock*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gfs2_rbm, align 8
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %14, i32 0, i32 1
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 2
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  store %struct.gfs2_rgrpd* %20, %struct.gfs2_rgrpd** %19, align 8
  br label %21

21:                                               ; preds = %3, %57, %62, %72, %96
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 0
  %24 = call i32 @down_write(i32* %23)
  %25 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %26 = call i32 @gfs2_rbm_find(%struct.gfs2_rbm* %13, i32 %25, i32* null, i32* null, i32 1)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 0
  %29 = call i32 @up_write(i32* %28)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %97

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %97

40:                                               ; preds = %35
  %41 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %13)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i64 @gfs2_rbm_from_block(%struct.gfs2_rbm* %13, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %97

47:                                               ; preds = %40
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NO_BLOCK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %21

58:                                               ; preds = %52, %47
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %21

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @CREATE, align 4
  %69 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %66, i64 %67, i32* @gfs2_iopen_glops, i32 %68, %struct.gfs2_glock** %9)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %21

73:                                               ; preds = %63
  %74 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %75 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %74, i32 0, i32 1
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %75, align 8
  store %struct.gfs2_inode* %76, %struct.gfs2_inode** %10, align 8
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %78 = icmp ne %struct.gfs2_inode* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @gfs2_delete_workqueue, align 4
  %81 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %82 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %81, i32 0, i32 0
  %83 = call i64 @queue_work(i32 %80, i32* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %73
  %86 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %87 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %86)
  br label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @NR_CPUS, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %104

96:                                               ; preds = %91
  br label %21

97:                                               ; preds = %46, %39, %34
  %98 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %101 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %95
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_rbm_find(%struct.gfs2_rbm*, i32, i32*, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i64 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i64, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
