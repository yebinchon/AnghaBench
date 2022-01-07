; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_track_ds_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_layout_track_ds_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_flexfile_layout = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nfs4_ff_layout_ds_err = type { i32, i32, i32, i32, i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_DEVICEID4_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_layout_track_ds_error(%struct.nfs4_flexfile_layout* %0, %struct.nfs4_ff_layout_mirror* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_flexfile_layout*, align 8
  %10 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs4_ff_layout_ds_err*, align 8
  store %struct.nfs4_flexfile_layout* %0, %struct.nfs4_flexfile_layout** %9, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %82

20:                                               ; preds = %7
  %21 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %10, align 8
  %22 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_8__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %82

29:                                               ; preds = %20
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.nfs4_ff_layout_ds_err* @kmalloc(i32 40, i32 %30)
  store %struct.nfs4_ff_layout_ds_err* %31, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %32 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %33 = icmp ne %struct.nfs4_ff_layout_ds_err* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %82

37:                                               ; preds = %29
  %38 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %39 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %38, i32 0, i32 6
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %43 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %46 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %49 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %52 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %54 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %53, i32 0, i32 3
  %55 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %10, align 8
  %56 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %55, i32 0, i32 1
  %57 = call i32 @nfs4_stateid_copy(i32* %54, i32* %56)
  %58 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %59 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %58, i32 0, i32 2
  %60 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* @NFS4_DEVICEID4_SIZE, align 4
  %66 = call i32 @memcpy(i32* %59, i32* %64, i32 %65)
  %67 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %9, align 8
  %68 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %9, align 8
  %74 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %16, align 8
  %75 = call i32 @ff_layout_add_ds_error_locked(%struct.nfs4_flexfile_layout* %73, %struct.nfs4_ff_layout_ds_err* %74)
  %76 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %9, align 8
  %77 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %37, %34, %26, %19
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_8__*) #1

declare dso_local %struct.nfs4_ff_layout_ds_err* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ff_layout_add_ds_error_locked(%struct.nfs4_flexfile_layout*, %struct.nfs4_ff_layout_ds_err*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
