; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_get_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_get_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountpoint = type { i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@mount_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mountpoint* (%struct.dentry*)* @get_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mountpoint* @get_mountpoint(%struct.dentry* %0) #0 {
  %2 = alloca %struct.mountpoint*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.mountpoint*, align 8
  %5 = alloca %struct.mountpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.mountpoint* null, %struct.mountpoint** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call i64 @d_mountpoint(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call i64 @d_unlinked(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mountpoint* @ERR_PTR(i32 %16)
  store %struct.mountpoint* %17, %struct.mountpoint** %2, align 8
  br label %77

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %48, %18
  %20 = call i32 @read_seqlock_excl(i32* @mount_lock)
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = call %struct.mountpoint* @lookup_mountpoint(%struct.dentry* %21)
  store %struct.mountpoint* %22, %struct.mountpoint** %4, align 8
  %23 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  %24 = load %struct.mountpoint*, %struct.mountpoint** %4, align 8
  %25 = icmp ne %struct.mountpoint* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %73

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %30 = icmp ne %struct.mountpoint* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mountpoint* @kmalloc(i32 16, i32 %32)
  store %struct.mountpoint* %33, %struct.mountpoint** %5, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %36 = icmp ne %struct.mountpoint* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.mountpoint* @ERR_PTR(i32 %39)
  store %struct.mountpoint* %40, %struct.mountpoint** %2, align 8
  br label %77

41:                                               ; preds = %34
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = call i32 @d_set_mounted(%struct.dentry* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %19

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.mountpoint* @ERR_PTR(i32 %50)
  store %struct.mountpoint* %51, %struct.mountpoint** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %73

55:                                               ; preds = %49
  %56 = call i32 @read_seqlock_excl(i32* @mount_lock)
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = call i32 @dget(%struct.dentry* %57)
  %59 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %60 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %62 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %64 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %63, i32 0, i32 2
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  %66 = call i32 @mp_hash(%struct.dentry* %65)
  %67 = call i32 @hlist_add_head(i32* %64, i32 %66)
  %68 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %69 = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %68, i32 0, i32 1
  %70 = call i32 @INIT_HLIST_HEAD(i32* %69)
  %71 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  %72 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  store %struct.mountpoint* %72, %struct.mountpoint** %4, align 8
  store %struct.mountpoint* null, %struct.mountpoint** %5, align 8
  br label %73

73:                                               ; preds = %55, %54, %26
  %74 = load %struct.mountpoint*, %struct.mountpoint** %5, align 8
  %75 = call i32 @kfree(%struct.mountpoint* %74)
  %76 = load %struct.mountpoint*, %struct.mountpoint** %4, align 8
  store %struct.mountpoint* %76, %struct.mountpoint** %2, align 8
  br label %77

77:                                               ; preds = %73, %37, %14
  %78 = load %struct.mountpoint*, %struct.mountpoint** %2, align 8
  ret %struct.mountpoint* %78
}

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @d_unlinked(%struct.dentry*) #1

declare dso_local %struct.mountpoint* @ERR_PTR(i32) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local %struct.mountpoint* @lookup_mountpoint(%struct.dentry*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local %struct.mountpoint* @kmalloc(i32, i32) #1

declare dso_local i32 @d_set_mounted(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @mp_hash(%struct.dentry*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.mountpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
