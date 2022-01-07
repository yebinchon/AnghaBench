; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_flow_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_flow_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.caif_device_entry = type { i32, void (%struct.sk_buff*)*, %struct.TYPE_3__, i32, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@_CAIF_CTRLCMD_PHYIF_FLOW_ON_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @caif_flow_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caif_flow_cb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.caif_device_entry*, align 8
  %4 = alloca void (%struct.sk_buff*)*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store void (%struct.sk_buff*)* null, void (%struct.sk_buff*)** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.caif_device_entry* @caif_get(i32* %15)
  store %struct.caif_device_entry* %16, %struct.caif_device_entry** %3, align 8
  %17 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %18 = icmp eq %struct.caif_device_entry* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %22 = icmp ne %struct.caif_device_entry* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 (...) @rcu_read_unlock()
  br label %88

25:                                               ; preds = %1
  %26 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %27 = call i32 @caifd_hold(%struct.caif_device_entry* %26)
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %30 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %33 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %36 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %38 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %37, i32 0, i32 1
  %39 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %38, align 8
  store void (%struct.sk_buff*)* %39, void (%struct.sk_buff*)** %4, align 8
  %40 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %41 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %40, i32 0, i32 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = icmp ne %struct.sk_buff* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %51 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %50, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %51, align 8
  %52 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %53 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %52, i32 0, i32 1
  store void (%struct.sk_buff*)* null, void (%struct.sk_buff*)** %53, align 8
  %54 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %55 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %54, i32 0, i32 3
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %4, align 8
  %58 = icmp ne void (%struct.sk_buff*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  call void %63(%struct.sk_buff* %64)
  br label %65

65:                                               ; preds = %62, %59, %49
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %70 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %73, align 8
  %75 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %76 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* @_CAIF_CTRLCMD_PHYIF_FLOW_ON_IND, align 4
  %80 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %81 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %74(%struct.TYPE_4__* %78, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %68, %65
  %86 = load %struct.caif_device_entry*, %struct.caif_device_entry** %3, align 8
  %87 = call i32 @caifd_put(%struct.caif_device_entry* %86)
  br label %88

88:                                               ; preds = %85, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.caif_device_entry* @caif_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @caifd_hold(%struct.caif_device_entry*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @caifd_put(%struct.caif_device_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
