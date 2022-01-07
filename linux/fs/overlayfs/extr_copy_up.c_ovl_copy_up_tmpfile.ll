; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_copy_up_ctx = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ovl_cu_creds = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_copy_up_ctx*)* @ovl_copy_up_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_copy_up_tmpfile(%struct.ovl_copy_up_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ovl_copy_up_ctx*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_cu_creds, align 4
  %8 = alloca i32, align 4
  store %struct.ovl_copy_up_ctx* %0, %struct.ovl_copy_up_ctx** %3, align 8
  %9 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.inode* @d_inode(i32 %11)
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ovl_prep_cu_creds(i32 %15, %struct.ovl_cu_creds* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.dentry* @ovl_do_tmpfile(i32 %24, i32 %28)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  %30 = call i32 @ovl_revert_cu_creds(%struct.ovl_cu_creds* %7)
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i64 @IS_ERR(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.dentry* %35)
  store i32 %36, i32* %2, align 4
  br label %100

37:                                               ; preds = %21
  %38 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @ovl_copy_up_inode(%struct.ovl_copy_up_ctx* %38, %struct.dentry* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %96

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load i32, i32* @I_MUTEX_PARENT, align 4
  %47 = call i32 @inode_lock_nested(%struct.inode* %45, i32 %46)
  %48 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.dentry* @lookup_one_len(i32 %51, i32 %54, i32 %58)
  store %struct.dentry* %59, %struct.dentry** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.dentry* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = call i64 @IS_ERR(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %44
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @ovl_do_link(%struct.dentry* %66, %struct.inode* %67, %struct.dentry* %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call i32 @dput(%struct.dentry* %70)
  br label %72

72:                                               ; preds = %65, %44
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call i32 @inode_unlock(%struct.inode* %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %96

78:                                               ; preds = %72
  %79 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.inode* @d_inode(i32 %86)
  %88 = call i32 @ovl_set_upperdata(%struct.inode* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.inode* @d_inode(i32 %92)
  %94 = load %struct.dentry*, %struct.dentry** %5, align 8
  %95 = call i32 @ovl_inode_update(%struct.inode* %93, %struct.dentry* %94)
  store i32 0, i32* %2, align 4
  br label %100

96:                                               ; preds = %77, %43
  %97 = load %struct.dentry*, %struct.dentry** %5, align 8
  %98 = call i32 @dput(%struct.dentry* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %89, %34, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @ovl_prep_cu_creds(i32, %struct.ovl_cu_creds*) #1

declare dso_local %struct.dentry* @ovl_do_tmpfile(i32, i32) #1

declare dso_local i32 @ovl_revert_cu_creds(%struct.ovl_cu_creds*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up_inode(%struct.ovl_copy_up_ctx*, %struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, i32, i32) #1

declare dso_local i32 @ovl_do_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_set_upperdata(%struct.inode*) #1

declare dso_local i32 @ovl_inode_update(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
