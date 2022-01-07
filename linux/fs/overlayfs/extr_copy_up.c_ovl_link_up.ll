; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_copy_up_ctx = type { %struct.TYPE_8__*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_copy_up_ctx*)* @ovl_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_link_up(%struct.ovl_copy_up_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ovl_copy_up_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.ovl_copy_up_ctx* %0, %struct.ovl_copy_up_ctx** %3, align 8
  %8 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.dentry* @ovl_dentry_upper(%struct.TYPE_8__* %10)
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i32 @ovl_set_impure(%struct.TYPE_8__* %16, %struct.dentry* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  %24 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @ovl_set_nlink_lower(%struct.TYPE_8__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %23
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i32, i32* @I_MUTEX_PARENT, align 4
  %35 = call i32 @inode_lock_nested(%struct.inode* %33, i32 %34)
  %36 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.dentry* @lookup_one_len(i32 %41, %struct.dentry* %42, i32 %48)
  store %struct.dentry* %49, %struct.dentry** %5, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i32 @PTR_ERR(%struct.dentry* %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = call i32 @IS_ERR(%struct.dentry* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %32
  %56 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call %struct.dentry* @ovl_dentry_upper(%struct.TYPE_8__* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = call i32 @ovl_do_link(%struct.dentry* %59, %struct.inode* %60, %struct.dentry* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = call i32 @dput(%struct.dentry* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %55
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %69, i32 0, i32 1
  %71 = call i32 @ovl_set_timestamps(%struct.dentry* %68, i32* %70)
  %72 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @ovl_dentry_set_upper_alias(%struct.TYPE_8__* %74)
  br label %76

76:                                               ; preds = %67, %55
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call i32 @inode_unlock(%struct.inode* %78)
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %90

84:                                               ; preds = %77
  %85 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @ovl_set_nlink_upper(%struct.TYPE_8__* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %82, %30, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.TYPE_8__*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_set_impure(%struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @ovl_set_nlink_lower(%struct.TYPE_8__*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_do_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_set_timestamps(%struct.dentry*, i32*) #1

declare dso_local i32 @ovl_dentry_set_upper_alias(%struct.TYPE_8__*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_set_nlink_upper(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
