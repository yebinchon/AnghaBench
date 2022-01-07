; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c___ns_get_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c___ns_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i8*, i32 }
%struct.ns_common = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ns_common*)* }
%struct.inode = type { i32, %struct.ns_common*, i32*, i32, i32, i32, i32, i32 }

@nsfs_mnt = common dso_local global %struct.vfsmount* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@ns_file_operations = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.path*, %struct.ns_common*)* @__ns_get_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ns_get_path(%struct.path* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** @nsfs_mnt, align 8
  store %struct.vfsmount* %10, %struct.vfsmount** %6, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %13 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %12, i32 0, i32 0
  %14 = call i64 @atomic_long_read(i32* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %43

18:                                               ; preds = %2
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to %struct.dentry*
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = call i32 @lockref_get_not_dead(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %43

26:                                               ; preds = %18
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %29 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ns_common*)*, i32 (%struct.ns_common*)** %31, align 8
  %33 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %34 = call i32 %32(%struct.ns_common* %33)
  br label %35

35:                                               ; preds = %129, %26
  %36 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %37 = call i32 @mntget(%struct.vfsmount* %36)
  %38 = load %struct.path*, %struct.path** %4, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = load %struct.path*, %struct.path** %4, align 8
  %42 = getelementptr inbounds %struct.path, %struct.path* %41, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %42, align 8
  store i8* null, i8** %3, align 8
  br label %130

43:                                               ; preds = %25, %17
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %46 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.inode* @new_inode_pseudo(i32 %47)
  store %struct.inode* %48, %struct.inode** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = icmp ne %struct.inode* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %43
  %52 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %53 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ns_common*)*, i32 (%struct.ns_common*)** %55, align 8
  %57 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %58 = call i32 %56(%struct.ns_common* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i8* @ERR_PTR(i32 %60)
  store i8* %61, i8** %3, align 8
  br label %130

62:                                               ; preds = %43
  %63 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %64 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call i32 @current_time(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 5
  store i32 %69, i32* %73, align 8
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 6
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @S_IMMUTABLE, align 4
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @S_IFREG, align 4
  %82 = load i32, i32* @S_IRUGO, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  store i32* @ns_file_operations, i32** %87, align 8
  %88 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  store %struct.ns_common* %88, %struct.ns_common** %90, align 8
  %91 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %92 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.dentry* @d_alloc_anon(i32 %93)
  store %struct.dentry* %94, %struct.dentry** %7, align 8
  %95 = load %struct.dentry*, %struct.dentry** %7, align 8
  %96 = icmp ne %struct.dentry* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %62
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call i32 @iput(%struct.inode* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i8* @ERR_PTR(i32 %101)
  store i8* %102, i8** %3, align 8
  br label %130

103:                                              ; preds = %62
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call i32 @d_instantiate(%struct.dentry* %104, %struct.inode* %105)
  %107 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %108 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = bitcast %struct.TYPE_2__* %109 to i8*
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %114 = getelementptr inbounds %struct.ns_common, %struct.ns_common* %113, i32 0, i32 0
  %115 = load %struct.dentry*, %struct.dentry** %7, align 8
  %116 = ptrtoint %struct.dentry* %115 to i64
  %117 = call i64 @atomic_long_cmpxchg(i32* %114, i32 0, i64 %116)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %103
  %121 = load %struct.dentry*, %struct.dentry** %7, align 8
  %122 = call i32 @d_delete(%struct.dentry* %121)
  %123 = load %struct.dentry*, %struct.dentry** %7, align 8
  %124 = call i32 @dput(%struct.dentry* %123)
  %125 = call i32 (...) @cpu_relax()
  %126 = load i32, i32* @EAGAIN, align 4
  %127 = sub nsw i32 0, %126
  %128 = call i8* @ERR_PTR(i32 %127)
  store i8* %128, i8** %3, align 8
  br label %130

129:                                              ; preds = %103
  br label %35

130:                                              ; preds = %120, %97, %51, %35
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local %struct.inode* @new_inode_pseudo(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_anon(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @atomic_long_cmpxchg(i32*, i32, i64) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
