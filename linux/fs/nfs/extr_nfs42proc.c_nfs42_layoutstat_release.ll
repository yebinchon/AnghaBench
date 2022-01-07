; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layoutstat_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_layoutstat_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs42_layoutstat_data = type { %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, %struct.nfs42_layoutstat_devinfo*, i32 }
%struct.nfs42_layoutstat_devinfo = type { %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_8__ = type { i32, i32 }

@NFS_INO_LAYOUTSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs42_layoutstat_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs42_layoutstat_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs42_layoutstat_data*, align 8
  %4 = alloca %struct.nfs42_layoutstat_devinfo*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nfs42_layoutstat_data*
  store %struct.nfs42_layoutstat_data* %7, %struct.nfs42_layoutstat_data** %3, align 8
  %8 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %9 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %10, align 8
  store %struct.nfs42_layoutstat_devinfo* %11, %struct.nfs42_layoutstat_devinfo** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %15 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %12
  %20 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %20, i64 %22
  %24 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %29, i64 %31
  %33 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_7__*)* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %40, i64 %42
  %44 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %47, align 8
  %49 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %49, i64 %51
  %53 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %52, i32 0, i32 2
  %54 = call i32 %48(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %39, %28, %19
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %12

59:                                               ; preds = %12
  %60 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %61 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_8__* @NFS_I(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pnfs_put_layout_hdr(i32 %66)
  %68 = call i32 (...) @smp_mb__before_atomic()
  %69 = load i32, i32* @NFS_INO_LAYOUTSTATS, align 4
  %70 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %71 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_8__* @NFS_I(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %69, i32* %75)
  %77 = call i32 (...) @smp_mb__after_atomic()
  %78 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %79 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @nfs_iput_and_deactive(i32 %80)
  %82 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %83 = getelementptr inbounds %struct.nfs42_layoutstat_data, %struct.nfs42_layoutstat_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %84, align 8
  %86 = call i32 @kfree(%struct.nfs42_layoutstat_devinfo* %85)
  %87 = load %struct.nfs42_layoutstat_data*, %struct.nfs42_layoutstat_data** %3, align 8
  %88 = bitcast %struct.nfs42_layoutstat_data* %87 to %struct.nfs42_layoutstat_devinfo*
  %89 = call i32 @kfree(%struct.nfs42_layoutstat_devinfo* %88)
  ret void
}

declare dso_local i32 @pnfs_put_layout_hdr(i32) #1

declare dso_local %struct.TYPE_8__* @NFS_I(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @nfs_iput_and_deactive(i32) #1

declare dso_local i32 @kfree(%struct.nfs42_layoutstat_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
