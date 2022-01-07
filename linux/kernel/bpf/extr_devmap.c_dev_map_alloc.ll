; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_dev_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%union.bpf_attr = type { i32 }
%struct.bpf_dtab = type { %struct.bpf_map, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_map_lock = common dso_local global i32 0, align 4
@dev_map_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @dev_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @dev_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_dtab*, align 8
  %5 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %6 = load i32, i32* @CAP_NET_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPERM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.bpf_map* @ERR_PTR(i32 %11)
  store %struct.bpf_map* %12, %struct.bpf_map** %2, align 8
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_USER, align 4
  %15 = call %struct.bpf_dtab* @kzalloc(i32 8, i32 %14)
  store %struct.bpf_dtab* %15, %struct.bpf_dtab** %4, align 8
  %16 = load %struct.bpf_dtab*, %struct.bpf_dtab** %4, align 8
  %17 = icmp ne %struct.bpf_dtab* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.bpf_map* @ERR_PTR(i32 %20)
  store %struct.bpf_map* %21, %struct.bpf_map** %2, align 8
  br label %41

22:                                               ; preds = %13
  %23 = load %struct.bpf_dtab*, %struct.bpf_dtab** %4, align 8
  %24 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %25 = call i32 @dev_map_init_map(%struct.bpf_dtab* %23, %union.bpf_attr* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.bpf_dtab*, %struct.bpf_dtab** %4, align 8
  %30 = call i32 @kfree(%struct.bpf_dtab* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.bpf_map* @ERR_PTR(i32 %31)
  store %struct.bpf_map* %32, %struct.bpf_map** %2, align 8
  br label %41

33:                                               ; preds = %22
  %34 = call i32 @spin_lock(i32* @dev_map_lock)
  %35 = load %struct.bpf_dtab*, %struct.bpf_dtab** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_dtab, %struct.bpf_dtab* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail_rcu(i32* %36, i32* @dev_map_list)
  %38 = call i32 @spin_unlock(i32* @dev_map_lock)
  %39 = load %struct.bpf_dtab*, %struct.bpf_dtab** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_dtab, %struct.bpf_dtab* %39, i32 0, i32 0
  store %struct.bpf_map* %40, %struct.bpf_map** %2, align 8
  br label %41

41:                                               ; preds = %33, %28, %18, %9
  %42 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %42
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_dtab* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_map_init_map(%struct.bpf_dtab*, %union.bpf_attr*) #1

declare dso_local i32 @kfree(%struct.bpf_dtab*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
