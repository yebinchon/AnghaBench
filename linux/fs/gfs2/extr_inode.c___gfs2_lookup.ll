; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c___gfs2_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c___gfs2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i32 }
%struct.file = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_glock = type { i32 }
%struct.TYPE_2__ = type { %struct.gfs2_glock* }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@gfs2_open_common = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.file*)* @__gfs2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__gfs2_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca %struct.gfs2_glock*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = call %struct.inode* @gfs2_lookupi(%struct.inode* %13, i32* %15, i32 0)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = icmp eq %struct.inode* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = bitcast %struct.dentry* %20 to %struct.inode*
  %22 = call i32 @d_add(%struct.inode* %21, i32* null)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call %struct.inode* @ERR_CAST(%struct.inode* %28)
  %30 = bitcast %struct.inode* %29 to %struct.dentry*
  store %struct.dentry* %30, %struct.dentry** %4, align 8
  br label %89

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.gfs2_glock*, %struct.gfs2_glock** %34, align 8
  store %struct.gfs2_glock* %35, %struct.gfs2_glock** %11, align 8
  %36 = load %struct.gfs2_glock*, %struct.gfs2_glock** %11, align 8
  %37 = load i32, i32* @LM_ST_SHARED, align 4
  %38 = load i32, i32* @LM_FLAG_ANY, align 4
  %39 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %36, i32 %37, i32 %38, %struct.gfs2_holder* %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @iput(%struct.inode* %43)
  %45 = load i32, i32* %12, align 4
  %46 = call %struct.inode* @ERR_PTR(i32 %45)
  %47 = bitcast %struct.inode* %46 to %struct.dentry*
  store %struct.dentry* %47, %struct.dentry** %4, align 8
  br label %89

48:                                               ; preds = %31
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = bitcast %struct.dentry* %50 to %struct.inode*
  %52 = call %struct.inode* @d_splice_alias(%struct.inode* %49, %struct.inode* %51)
  %53 = bitcast %struct.inode* %52 to %struct.dentry*
  store %struct.dentry* %53, %struct.dentry** %9, align 8
  %54 = load %struct.dentry*, %struct.dentry** %9, align 8
  %55 = bitcast %struct.dentry* %54 to %struct.inode*
  %56 = call i64 @IS_ERR(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %60, %struct.dentry** %4, align 8
  br label %89

61:                                               ; preds = %48
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = icmp ne %struct.file* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISREG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = bitcast %struct.dentry* %72 to %struct.inode*
  %74 = load i32, i32* @gfs2_open_common, align 4
  %75 = call i32 @finish_open(%struct.file* %71, %struct.inode* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %64, %61
  %77 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.dentry*, %struct.dentry** %9, align 8
  %82 = bitcast %struct.dentry* %81 to %struct.inode*
  %83 = call i32 @dput(%struct.inode* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.inode* @ERR_PTR(i32 %84)
  %86 = bitcast %struct.inode* %85 to %struct.dentry*
  store %struct.dentry* %86, %struct.dentry** %4, align 8
  br label %89

87:                                               ; preds = %76
  %88 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %88, %struct.dentry** %4, align 8
  br label %89

89:                                               ; preds = %87, %80, %58, %42, %27, %19
  %90 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %90
}

declare dso_local %struct.inode* @gfs2_lookupi(%struct.inode*, i32*, i32) #1

declare dso_local i32 @d_add(%struct.inode*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.inode*, i32) #1

declare dso_local i32 @dput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
