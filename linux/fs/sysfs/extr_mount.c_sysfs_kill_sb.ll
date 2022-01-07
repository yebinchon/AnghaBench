; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_mount.c_sysfs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_mount.c_sysfs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@KOBJ_NS_TYPE_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @sysfs_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysfs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call i64 @kernfs_super_ns(%struct.super_block* %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @kernfs_kill_sb(%struct.super_block* %7)
  %9 = load i32, i32* @KOBJ_NS_TYPE_NET, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @kobj_ns_drop(i32 %9, i8* %10)
  ret void
}

declare dso_local i64 @kernfs_super_ns(%struct.super_block*) #1

declare dso_local i32 @kernfs_kill_sb(%struct.super_block*) #1

declare dso_local i32 @kobj_ns_drop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
