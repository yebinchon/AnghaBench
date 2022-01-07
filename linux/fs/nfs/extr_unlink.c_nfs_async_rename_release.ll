; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_async_rename_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_renamedata = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs_async_rename_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_rename_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_renamedata*, align 8
  %4 = alloca %struct.super_block*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs_renamedata*
  store %struct.nfs_renamedata* %6, %struct.nfs_renamedata** %3, align 8
  %7 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %4, align 8
  %12 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @d_really_is_positive(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @d_inode(i32 %20)
  %22 = call i32 @nfs_mark_for_revalidate(i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @nfs_force_lookup_revalidate(%struct.TYPE_3__* %36)
  %38 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %28
  %51 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %57 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @nfs_force_lookup_revalidate(%struct.TYPE_3__* %58)
  %60 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %61 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %50, %28
  br label %66

66:                                               ; preds = %65, %23
  %67 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %68 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dput(i32 %69)
  %71 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dput(i32 %73)
  %75 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %76 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i32 @iput(%struct.TYPE_3__* %77)
  %79 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %80 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @iput(%struct.TYPE_3__* %81)
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = call i32 @nfs_sb_deactive(%struct.super_block* %83)
  %85 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %86 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @put_cred(i32 %87)
  %89 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %90 = call i32 @kfree(%struct.nfs_renamedata* %89)
  ret void
}

declare dso_local i64 @d_really_is_positive(i32) #1

declare dso_local i32 @nfs_mark_for_revalidate(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_force_lookup_revalidate(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @iput(%struct.TYPE_3__*) #1

declare dso_local i32 @nfs_sb_deactive(%struct.super_block*) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @kfree(%struct.nfs_renamedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
