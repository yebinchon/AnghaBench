; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_mount_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_mount_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__, i32, %struct.mount* }
%struct.TYPE_2__ = type { i32 }

@MNT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @propagate_mount_unlock(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %2, align 8
  %6 = load %struct.mount*, %struct.mount** %2, align 8
  %7 = getelementptr inbounds %struct.mount, %struct.mount* %6, i32 0, i32 2
  %8 = load %struct.mount*, %struct.mount** %7, align 8
  store %struct.mount* %8, %struct.mount** %3, align 8
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = load %struct.mount*, %struct.mount** %2, align 8
  %11 = icmp eq %struct.mount* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = call %struct.mount* @propagation_next(%struct.mount* %14, %struct.mount* %15)
  store %struct.mount* %16, %struct.mount** %4, align 8
  br label %17

17:                                               ; preds = %38, %1
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = icmp ne %struct.mount* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.mount*, %struct.mount** %4, align 8
  %22 = getelementptr inbounds %struct.mount, %struct.mount* %21, i32 0, i32 0
  %23 = load %struct.mount*, %struct.mount** %2, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.mount* @__lookup_mnt(%struct.TYPE_2__* %22, i32 %25)
  store %struct.mount* %26, %struct.mount** %5, align 8
  %27 = load %struct.mount*, %struct.mount** %5, align 8
  %28 = icmp ne %struct.mount* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, i32* @MNT_LOCKED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.mount*, %struct.mount** %5, align 8
  %33 = getelementptr inbounds %struct.mount, %struct.mount* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %29, %20
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.mount*, %struct.mount** %4, align 8
  %40 = load %struct.mount*, %struct.mount** %3, align 8
  %41 = call %struct.mount* @propagation_next(%struct.mount* %39, %struct.mount* %40)
  store %struct.mount* %41, %struct.mount** %4, align 8
  br label %17

42:                                               ; preds = %17
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.mount* @propagation_next(%struct.mount*, %struct.mount*) #1

declare dso_local %struct.mount* @__lookup_mnt(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
