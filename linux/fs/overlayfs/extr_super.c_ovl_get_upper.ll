; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_upper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i32, %struct.vfsmount*, i32, %struct.TYPE_4__ }
%struct.vfsmount = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.path = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"overlayfs: upper fs is r/o, try multi-lower layers mount\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"upperdir\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"overlayfs: failed to clone upperpath\0A\00", align 1
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4
@MNT_RELATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.path*)* @ovl_get_upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_get_upper(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ovl_fs*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  %9 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %10 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.path*, %struct.path** %6, align 8
  %14 = call i32 @ovl_mount_dir(i32 %12, %struct.path* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.path*, %struct.path** %6, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @sb_rdonly(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %94

30:                                               ; preds = %18
  %31 = load %struct.path*, %struct.path** %6, align 8
  %32 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %33 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %34 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ovl_check_namelen(%struct.path* %31, %struct.ovl_fs* %32, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %94

41:                                               ; preds = %30
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load %struct.path*, %struct.path** %6, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %47 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %46, i32 0, i32 2
  %48 = call i32 @ovl_setup_trap(%struct.super_block* %42, i32 %45, i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %94

52:                                               ; preds = %41
  %53 = load %struct.path*, %struct.path** %6, align 8
  %54 = call %struct.vfsmount* @clone_private_mount(%struct.path* %53)
  store %struct.vfsmount* %54, %struct.vfsmount** %7, align 8
  %55 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %56 = call i32 @PTR_ERR(%struct.vfsmount* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %58 = call i64 @IS_ERR(%struct.vfsmount* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %94

62:                                               ; preds = %52
  %63 = load i32, i32* @MNT_NOATIME, align 4
  %64 = load i32, i32* @MNT_NODIRATIME, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MNT_RELATIME, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %70 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %74 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %75 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %74, i32 0, i32 1
  store %struct.vfsmount* %73, %struct.vfsmount** %75, align 8
  %76 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %77 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %76, i32 0, i32 1
  %78 = load %struct.vfsmount*, %struct.vfsmount** %77, align 8
  %79 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ovl_inuse_trylock(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %62
  %84 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %85 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %93

86:                                               ; preds = %62
  %87 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %88 = call i32 @ovl_report_in_use(%struct.ovl_fs* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %94

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %83
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %91, %60, %51, %40, %26, %17
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @ovl_mount_dir(i32, %struct.path*) #1

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ovl_check_namelen(%struct.path*, %struct.ovl_fs*, i32) #1

declare dso_local i32 @ovl_setup_trap(%struct.super_block*, i32, i32*, i8*) #1

declare dso_local %struct.vfsmount* @clone_private_mount(%struct.path*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i64 @ovl_inuse_trylock(i32) #1

declare dso_local i32 @ovl_report_in_use(%struct.ovl_fs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
