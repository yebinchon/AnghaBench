; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_reconfigure_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_reconfigure_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @do_reconfigure_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reconfigure_mnt(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.path*, %struct.path** %4, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.path*, %struct.path** %4, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call %struct.mount* @real_mount(%struct.TYPE_3__* %16)
  store %struct.mount* %17, %struct.mount** %7, align 8
  %18 = load %struct.mount*, %struct.mount** %7, align 8
  %19 = call i32 @check_mnt(%struct.mount* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.path*, %struct.path** %4, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mount*, %struct.mount** %7, align 8
  %29 = getelementptr inbounds %struct.mount, %struct.mount* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %24
  %37 = load %struct.mount*, %struct.mount** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @can_change_locked_flags(%struct.mount* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %36
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = call i32 @down_write(i32* %46)
  %48 = load %struct.mount*, %struct.mount** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @change_mount_ro_state(%struct.mount* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.mount*, %struct.mount** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @set_mount_attributes(%struct.mount* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = load %struct.path*, %struct.path** %4, align 8
  %62 = load %struct.mount*, %struct.mount** %7, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = call i32 @mnt_warn_timestamp_expiry(%struct.path* %61, %struct.TYPE_4__* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %41, %33, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mount* @real_mount(%struct.TYPE_3__*) #1

declare dso_local i32 @check_mnt(%struct.mount*) #1

declare dso_local i32 @can_change_locked_flags(%struct.mount*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @change_mount_ro_state(%struct.mount*, i32) #1

declare dso_local i32 @set_mount_attributes(%struct.mount*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mnt_warn_timestamp_expiry(%struct.path*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
