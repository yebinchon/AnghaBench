; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NFS: unlink(%s/%lu, %pd)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @VFS, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @dfprintk(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, %struct.dentry* %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call i32 @trace_nfs_unlink_enter(%struct.inode* %18, %struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 @d_count(%struct.dentry* %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call i32 @d_inode(%struct.dentry* %31)
  %33 = call i32 @write_inode_now(i32 %32, i32 0)
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i32 @nfs_sillyrename(%struct.inode* %34, %struct.dentry* %35)
  store i32 %36, i32* %5, align 4
  br label %70

37:                                               ; preds = %2
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = call i32 @d_unhashed(%struct.dentry* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = call i32 @__d_drop(%struct.dentry* %42)
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = call i32 @nfs_safe_remove(%struct.dentry* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %44
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @nfs_save_change_attribute(%struct.inode* %59)
  %61 = call i32 @nfs_set_verifier(%struct.dentry* %58, i32 %60)
  br label %69

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = call i32 @d_rehash(%struct.dentry* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @trace_nfs_unlink_exit(%struct.inode* %71, %struct.dentry* %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, %struct.dentry*) #1

declare dso_local i32 @trace_nfs_unlink_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_inode_now(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @nfs_sillyrename(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @nfs_safe_remove(%struct.dentry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @trace_nfs_unlink_exit(%struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
