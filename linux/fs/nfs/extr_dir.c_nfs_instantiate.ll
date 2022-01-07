; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_instantiate(%struct.dentry* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %9, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %14 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %15 = call %struct.dentry* @nfs_add_or_obtain(%struct.dentry* %11, %struct.nfs_fh* %12, %struct.nfs_fattr* %13, %struct.nfs4_label* %14)
  store %struct.dentry* %15, %struct.dentry** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %10, align 8
  %17 = call i64 @IS_ERR(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.dentry* %20)
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = call i32 @dput(%struct.dentry* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.dentry* @nfs_add_or_obtain(%struct.dentry*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
