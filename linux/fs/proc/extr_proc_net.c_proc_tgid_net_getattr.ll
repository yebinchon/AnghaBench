; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_tgid_net_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_tgid_net_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32 }
%struct.inode = type { i32 }
%struct.net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @proc_tgid_net_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_tgid_net_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.net*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call %struct.net* @get_proc_task_net(%struct.inode* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = load %struct.kstat*, %struct.kstat** %6, align 8
  %19 = call i32 @generic_fillattr(%struct.inode* %17, %struct.kstat* %18)
  %20 = load %struct.net*, %struct.net** %10, align 8
  %21 = icmp ne %struct.net* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.net*, %struct.net** %10, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kstat*, %struct.kstat** %6, align 8
  %29 = getelementptr inbounds %struct.kstat, %struct.kstat* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.net*, %struct.net** %10, align 8
  %31 = call i32 @put_net(%struct.net* %30)
  br label %32

32:                                               ; preds = %22, %4
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.net* @get_proc_task_net(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
