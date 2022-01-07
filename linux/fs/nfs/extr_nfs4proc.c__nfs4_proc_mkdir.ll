; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.nfs4_createdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs4_label* }

@ENOMEM = common dso_local global i32 0, align 4
@NF4DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, %struct.nfs4_label*)* @_nfs4_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_mkdir(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, %struct.nfs4_label* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca %struct.nfs4_label*, align 8
  %9 = alloca %struct.nfs4_createdata*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %8, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.iattr*, %struct.iattr** %7, align 8
  %17 = load i32, i32* @NF4DIR, align 4
  %18 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %13, i32* %15, %struct.iattr* %16, i32 %17)
  store %struct.nfs4_createdata* %18, %struct.nfs4_createdata** %9, align 8
  %19 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %20 = icmp eq %struct.nfs4_createdata* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.nfs4_label*, %struct.nfs4_label** %8, align 8
  %24 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %25 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.nfs4_label* %23, %struct.nfs4_label** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %30 = call i32 @nfs4_do_create(%struct.inode* %27, %struct.dentry* %28, %struct.nfs4_createdata* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %32 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %31)
  br label %33

33:                                               ; preds = %22, %21
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
