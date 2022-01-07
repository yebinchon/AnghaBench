; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_check_whiteouts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_check_whiteouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ovl_readdir_data = type { %struct.ovl_cache_entry*, %struct.TYPE_3__* }
%struct.ovl_cache_entry = type { i32, i32, i32, %struct.ovl_cache_entry* }
%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ovl_readdir_data*)* @ovl_check_whiteouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_whiteouts(%struct.dentry* %0, %struct.ovl_readdir_data* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ovl_readdir_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ovl_cache_entry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.ovl_readdir_data* %1, %struct.ovl_readdir_data** %4, align 8
  %9 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %10 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cred* @ovl_override_creds(i32 %13)
  store %struct.cred* %14, %struct.cred** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @down_write_killable(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %55, %22
  %24 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %25 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %24, i32 0, i32 0
  %26 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %25, align 8
  %27 = icmp ne %struct.ovl_cache_entry* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %30 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %29, i32 0, i32 0
  %31 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %30, align 8
  store %struct.ovl_cache_entry* %31, %struct.ovl_cache_entry** %6, align 8
  %32 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %32, i32 0, i32 3
  %34 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %33, align 8
  %35 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %36 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %35, i32 0, i32 0
  store %struct.ovl_cache_entry* %34, %struct.ovl_cache_entry** %36, align 8
  %37 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %6, align 8
  %38 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %6, align 8
  %42 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.dentry* @lookup_one_len(i32 %39, %struct.dentry* %40, i32 %43)
  store %struct.dentry* %44, %struct.dentry** %7, align 8
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = call i32 @IS_ERR(%struct.dentry* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %28
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = call i32 @ovl_is_whiteout(%struct.dentry* %49)
  %51 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = call i32 @dput(%struct.dentry* %53)
  br label %55

55:                                               ; preds = %48, %28
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @inode_unlock(%struct.TYPE_4__* %59)
  br label %61

61:                                               ; preds = %56, %2
  %62 = load %struct.cred*, %struct.cred** %8, align 8
  %63 = call i32 @revert_creds(%struct.cred* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @down_write_killable(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_is_whiteout(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
