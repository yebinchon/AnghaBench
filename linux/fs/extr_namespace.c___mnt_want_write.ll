; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c___mnt_want_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c___mnt_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MNT_WRITE_HOLD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mnt_want_write(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %5 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %6 = call %struct.mount* @real_mount(%struct.vfsmount* %5)
  store %struct.mount* %6, %struct.mount** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 (...) @preempt_disable()
  %8 = load %struct.mount*, %struct.mount** %3, align 8
  %9 = call i32 @mnt_inc_writers(%struct.mount* %8)
  %10 = call i32 (...) @smp_mb()
  br label %11

11:                                               ; preds = %20, %1
  %12 = load %struct.mount*, %struct.mount** %3, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  %17 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 (...) @cpu_relax()
  br label %11

22:                                               ; preds = %11
  %23 = call i32 (...) @smp_rmb()
  %24 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %25 = call i64 @mnt_is_readonly(%struct.vfsmount* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.mount*, %struct.mount** %3, align 8
  %29 = call i32 @mnt_dec_writers(%struct.mount* %28)
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = call i32 (...) @preempt_enable()
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @mnt_inc_writers(%struct.mount*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @mnt_is_readonly(%struct.vfsmount*) #1

declare dso_local i32 @mnt_dec_writers(%struct.mount*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
