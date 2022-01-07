; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_peernet2id_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_peernet2id_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32, i32 }

@NETNSA_NSID_NOT_ASSIGNED = common dso_local global i32 0, align 4
@RTM_NEWNSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peernet2id_alloc(%struct.net* %0, %struct.net* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 1
  %13 = call i64 @refcount_read(i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NETNSA_NSID_NOT_ASSIGNED, align 4
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = call i64 @maybe_get_net(%struct.net* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = call i32 @__peernet2id_alloc(%struct.net* %26, %struct.net* %27, i32* %8)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.net*, %struct.net** %5, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = load i32, i32* @RTM_NEWNSID, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rtnl_net_notifyid(%struct.net* %38, i32 %39, i32 %40, i32 0, i32* null, i32 %41)
  br label %43

43:                                               ; preds = %37, %34, %25
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.net*, %struct.net** %6, align 8
  %48 = call i32 @put_net(%struct.net* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @maybe_get_net(%struct.net*) #1

declare dso_local i32 @__peernet2id_alloc(%struct.net*, %struct.net*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtnl_net_notifyid(%struct.net*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
