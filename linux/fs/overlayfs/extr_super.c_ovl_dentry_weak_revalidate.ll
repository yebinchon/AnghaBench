; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_dentry_weak_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_dentry_weak_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_3__*, %struct.ovl_entry* }
%struct.TYPE_3__ = type { {}* }
%struct.ovl_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }

@DCACHE_OP_WEAK_REVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @ovl_dentry_weak_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dentry_weak_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ovl_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 2
  %11 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  store %struct.ovl_entry* %11, %struct.ovl_entry** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ovl_entry*, %struct.ovl_entry** %5, align 8
  %15 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.ovl_entry*, %struct.ovl_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DCACHE_OP_WEAK_REVALIDATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %18
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.dentry*, i32)**
  %39 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 %39(%struct.dentry* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %51

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %12

51:                                               ; preds = %45, %12
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
