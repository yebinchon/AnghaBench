; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, i32 }
%struct.mount = type opaque
%struct.mountpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_AUTOMOUNT = common dso_local global i32 0, align 4
@UMOUNT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i32)* @do_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_loopback(%struct.path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.mountpoint*, align 8
  %12 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mount* null, %struct.mount** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %25 = load i32, i32* @LOOKUP_AUTOMOUNT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @kern_path(i8* %23, i32 %26, %struct.path* %8)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %95

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  %35 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mnt_ns_loop(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %92

40:                                               ; preds = %32
  %41 = load %struct.path*, %struct.path** %5, align 8
  %42 = call %struct.mountpoint* @lock_mount(%struct.path* %41)
  store %struct.mountpoint* %42, %struct.mountpoint** %11, align 8
  %43 = load %struct.mountpoint*, %struct.mountpoint** %11, align 8
  %44 = call i64 @IS_ERR(%struct.mountpoint* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.mountpoint*, %struct.mountpoint** %11, align 8
  %48 = call i32 @PTR_ERR(%struct.mountpoint* %47)
  store i32 %48, i32* %12, align 4
  br label %92

49:                                               ; preds = %40
  %50 = load %struct.path*, %struct.path** %5, align 8
  %51 = getelementptr inbounds %struct.path, %struct.path* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.mountpoint* @real_mount(i32 %52)
  %54 = bitcast %struct.mountpoint* %53 to %struct.mount*
  store %struct.mount* %54, %struct.mount** %10, align 8
  %55 = load %struct.mount*, %struct.mount** %10, align 8
  %56 = bitcast %struct.mount* %55 to %struct.mountpoint*
  %57 = call i32 @check_mnt(%struct.mountpoint* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %89

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.mountpoint* @__do_loopback(%struct.path* %8, i32 %61)
  %63 = bitcast %struct.mountpoint* %62 to %struct.mount*
  store %struct.mount* %63, %struct.mount** %9, align 8
  %64 = load %struct.mount*, %struct.mount** %9, align 8
  %65 = bitcast %struct.mount* %64 to %struct.mountpoint*
  %66 = call i64 @IS_ERR(%struct.mountpoint* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.mount*, %struct.mount** %9, align 8
  %70 = bitcast %struct.mount* %69 to %struct.mountpoint*
  %71 = call i32 @PTR_ERR(%struct.mountpoint* %70)
  store i32 %71, i32* %12, align 4
  br label %89

72:                                               ; preds = %60
  %73 = load %struct.mount*, %struct.mount** %9, align 8
  %74 = bitcast %struct.mount* %73 to %struct.mountpoint*
  %75 = load %struct.mount*, %struct.mount** %10, align 8
  %76 = bitcast %struct.mount* %75 to %struct.mountpoint*
  %77 = load %struct.mountpoint*, %struct.mountpoint** %11, align 8
  %78 = call i32 @graft_tree(%struct.mountpoint* %74, %struct.mountpoint* %76, %struct.mountpoint* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = call i32 (...) @lock_mount_hash()
  %83 = load %struct.mount*, %struct.mount** %9, align 8
  %84 = bitcast %struct.mount* %83 to %struct.mountpoint*
  %85 = load i32, i32* @UMOUNT_SYNC, align 4
  %86 = call i32 @umount_tree(%struct.mountpoint* %84, i32 %85)
  %87 = call i32 (...) @unlock_mount_hash()
  br label %88

88:                                               ; preds = %81, %72
  br label %89

89:                                               ; preds = %88, %68, %59
  %90 = load %struct.mountpoint*, %struct.mountpoint** %11, align 8
  %91 = call i32 @unlock_mount(%struct.mountpoint* %90)
  br label %92

92:                                               ; preds = %89, %46, %39
  %93 = call i32 @path_put(%struct.path* %8)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %30, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i64 @mnt_ns_loop(i32) #1

declare dso_local %struct.mountpoint* @lock_mount(%struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.mountpoint*) #1

declare dso_local i32 @PTR_ERR(%struct.mountpoint*) #1

declare dso_local %struct.mountpoint* @real_mount(i32) #1

declare dso_local i32 @check_mnt(%struct.mountpoint*) #1

declare dso_local %struct.mountpoint* @__do_loopback(%struct.path*, i32) #1

declare dso_local i32 @graft_tree(%struct.mountpoint*, %struct.mountpoint*, %struct.mountpoint*) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @umount_tree(%struct.mountpoint*, i32) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @unlock_mount(%struct.mountpoint*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
