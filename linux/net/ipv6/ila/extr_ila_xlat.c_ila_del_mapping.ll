; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_del_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_del_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ila_xlat_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ila_net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ila_map = type { i32, i32 }

@ila_net_id = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ila_xlat_params*)* @ila_del_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_del_mapping(%struct.net* %0, %struct.ila_xlat_params* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.ila_xlat_params*, align 8
  %5 = alloca %struct.ila_net*, align 8
  %6 = alloca %struct.ila_map*, align 8
  %7 = alloca %struct.ila_map*, align 8
  %8 = alloca %struct.ila_map*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.ila_xlat_params* %1, %struct.ila_xlat_params** %4, align 8
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = load i32, i32* @ila_net_id, align 4
  %13 = call %struct.ila_net* @net_generic(%struct.net* %11, i32 %12)
  store %struct.ila_net* %13, %struct.ila_net** %5, align 8
  %14 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %15 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %16 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @ila_get_lock(%struct.ila_net* %14, i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %25 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %28 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* @rht_params, align 4
  %31 = call %struct.ila_map* @rhashtable_lookup_fast(i32* %26, i32* %29, i32 %30)
  store %struct.ila_map* %31, %struct.ila_map** %7, align 8
  %32 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  store %struct.ila_map* %32, %struct.ila_map** %6, align 8
  store %struct.ila_map* null, %struct.ila_map** %8, align 8
  br label %33

33:                                               ; preds = %41, %2
  %34 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %35 = icmp ne %struct.ila_map* %34, null
  br i1 %35, label %36, label %95

36:                                               ; preds = %33
  %37 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %38 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %39 = call i64 @ila_cmp_params(%struct.ila_map* %37, %struct.ila_xlat_params* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  store %struct.ila_map* %42, %struct.ila_map** %8, align 8
  %43 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %44 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @lockdep_is_held(i32* %46)
  %48 = call %struct.ila_map* @rcu_dereference_protected(i32 %45, i32 %47)
  store %struct.ila_map* %48, %struct.ila_map** %6, align 8
  br label %33

49:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  %50 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %51 = icmp ne %struct.ila_map* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %54 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %57 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rcu_assign_pointer(i32 %55, i32 %58)
  br label %92

60:                                               ; preds = %49
  %61 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %62 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @lockdep_is_held(i32* %64)
  %66 = call %struct.ila_map* @rcu_dereference_protected(i32 %63, i32 %65)
  store %struct.ila_map* %66, %struct.ila_map** %7, align 8
  %67 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %68 = icmp ne %struct.ila_map* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %60
  %70 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %71 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %74 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %73, i32 0, i32 0
  %75 = load %struct.ila_map*, %struct.ila_map** %7, align 8
  %76 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %75, i32 0, i32 0
  %77 = load i32, i32* @rht_params, align 4
  %78 = call i32 @rhashtable_replace_fast(i32* %72, i32* %74, i32* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %96

82:                                               ; preds = %69
  br label %91

83:                                               ; preds = %60
  %84 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %85 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %88 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %87, i32 0, i32 0
  %89 = load i32, i32* @rht_params, align 4
  %90 = call i32 @rhashtable_remove_fast(i32* %86, i32* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %83, %82
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %94 = call i32 @ila_release(%struct.ila_map* %93)
  br label %95

95:                                               ; preds = %92, %33
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local %struct.ila_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32* @ila_get_lock(%struct.ila_net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ila_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i64 @ila_cmp_params(%struct.ila_map*, %struct.ila_xlat_params*) #1

declare dso_local %struct.ila_map* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @rhashtable_replace_fast(i32*, i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @ila_release(%struct.ila_map*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
