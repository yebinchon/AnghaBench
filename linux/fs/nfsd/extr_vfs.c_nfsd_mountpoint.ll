; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.svc_export = type { i32 }

@NFSEXP_V4ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_mountpoint(%struct.dentry* %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.svc_export*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = call i32 @d_inode(%struct.dentry* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %12 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %29

18:                                               ; preds = %10
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call i64 @nfsd4_is_junction(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i64 @d_mountpoint(%struct.dentry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 2, i32* %3, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27, %22, %17, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @nfsd4_is_junction(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
