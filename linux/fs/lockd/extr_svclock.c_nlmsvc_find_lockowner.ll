; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_find_lockowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_find_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_lockowner = type { i32, i32, i32, i32 }
%struct.nlm_host = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlm_lockowner* (%struct.nlm_host*, i32)* @nlmsvc_find_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlm_lockowner* @nlmsvc_find_lockowner(%struct.nlm_host* %0, i32 %1) #0 {
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_lockowner*, align 8
  %6 = alloca %struct.nlm_lockowner*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.nlm_lockowner* null, %struct.nlm_lockowner** %6, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.nlm_lockowner* @__nlmsvc_find_lockowner(%struct.nlm_host* %10, i32 %11)
  store %struct.nlm_lockowner* %12, %struct.nlm_lockowner** %5, align 8
  %13 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %5, align 8
  %14 = icmp eq %struct.nlm_lockowner* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nlm_lockowner* @kmalloc(i32 16, i32 %19)
  store %struct.nlm_lockowner* %20, %struct.nlm_lockowner** %6, align 8
  %21 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %22 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.nlm_lockowner* @__nlmsvc_find_lockowner(%struct.nlm_host* %24, i32 %25)
  store %struct.nlm_lockowner* %26, %struct.nlm_lockowner** %5, align 8
  %27 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %5, align 8
  %28 = icmp eq %struct.nlm_lockowner* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %15
  %30 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %31 = icmp ne %struct.nlm_lockowner* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  store %struct.nlm_lockowner* %33, %struct.nlm_lockowner** %5, align 8
  %34 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %35 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %34, i32 0, i32 3
  %36 = call i32 @refcount_set(i32* %35, i32 1)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %39 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %41 = call i32 @nlm_get_host(%struct.nlm_host* %40)
  %42 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %43 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %45 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %44, i32 0, i32 0
  %46 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %47 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %46, i32 0, i32 1
  %48 = call i32 @list_add(i32* %45, i32* %47)
  store %struct.nlm_lockowner* null, %struct.nlm_lockowner** %6, align 8
  br label %49

49:                                               ; preds = %32, %29, %15
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %52 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %6, align 8
  %55 = call i32 @kfree(%struct.nlm_lockowner* %54)
  %56 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %5, align 8
  ret %struct.nlm_lockowner* %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nlm_lockowner* @__nlmsvc_find_lockowner(%struct.nlm_host*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nlm_lockowner* @kmalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @nlm_get_host(%struct.nlm_host*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nlm_lockowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
