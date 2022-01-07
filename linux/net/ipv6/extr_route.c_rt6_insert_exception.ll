; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_insert_exception.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_insert_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.fib6_result = type { %struct.fib6_nh*, %struct.fib6_info* }
%struct.fib6_nh = type { i32 }
%struct.fib6_info = type { %struct.TYPE_13__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.net = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.rt6_exception_bucket = type { i64, i32 }
%struct.rt6_exception = type { i32, i32, %struct.rt6_info* }

@rt6_exception_lock = common dso_local global i32 0, align 4
@FIB6_EXCEPTION_BUCKET_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@FIB6_MAX_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, %struct.fib6_result*)* @rt6_insert_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_insert_exception(%struct.rt6_info* %0, %struct.fib6_result* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_result*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rt6_exception_bucket*, align 8
  %7 = alloca %struct.fib6_info*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.rt6_exception*, align 8
  %10 = alloca %struct.fib6_nh*, align 8
  %11 = alloca i32, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store %struct.fib6_result* %1, %struct.fib6_result** %4, align 8
  %12 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %13 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @dev_net(i32 %15)
  store %struct.net* %16, %struct.net** %5, align 8
  %17 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %18 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %17, i32 0, i32 1
  %19 = load %struct.fib6_info*, %struct.fib6_info** %18, align 8
  store %struct.fib6_info* %19, %struct.fib6_info** %7, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %8, align 8
  %20 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %21 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %20, i32 0, i32 0
  %22 = load %struct.fib6_nh*, %struct.fib6_nh** %21, align 8
  store %struct.fib6_nh* %22, %struct.fib6_nh** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = call i32 @spin_lock_bh(i32* @rt6_exception_lock)
  %24 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %25 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lockdep_is_held(i32* @rt6_exception_lock)
  %28 = call %struct.rt6_exception_bucket* @rcu_dereference_protected(i32 %26, i32 %27)
  store %struct.rt6_exception_bucket* %28, %struct.rt6_exception_bucket** %6, align 8
  %29 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %30 = icmp ne %struct.rt6_exception_bucket* %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @FIB6_EXCEPTION_BUCKET_SIZE, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.rt6_exception_bucket* @kcalloc(i32 %32, i32 16, i32 %33)
  store %struct.rt6_exception_bucket* %34, %struct.rt6_exception_bucket** %6, align 8
  %35 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %36 = icmp ne %struct.rt6_exception_bucket* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %117

40:                                               ; preds = %31
  %41 = load %struct.fib6_nh*, %struct.fib6_nh** %10, align 8
  %42 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %45 = call i32 @rcu_assign_pointer(i32 %43, %struct.rt6_exception_bucket* %44)
  br label %54

46:                                               ; preds = %2
  %47 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %48 = call i64 @fib6_nh_excptn_bucket_flushed(%struct.rt6_exception_bucket* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %117

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %56 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %55, i32 0, i32 1
  %57 = load i32, i32* @RTAX_MTU, align 4
  %58 = call i64 @dst_metric_raw(%struct.TYPE_14__* %56, i32 %57)
  %59 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %60 = call i64 @fib6_mtu(%struct.fib6_result* %59)
  %61 = icmp sge i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %117

65:                                               ; preds = %54
  %66 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %67 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %70 = call %struct.rt6_exception* @__rt6_find_exception_spinlock(%struct.rt6_exception_bucket** %6, i32* %68, %struct.in6_addr* %69)
  store %struct.rt6_exception* %70, %struct.rt6_exception** %9, align 8
  %71 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %72 = icmp ne %struct.rt6_exception* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %75 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %76 = call i32 @rt6_remove_exception(%struct.rt6_exception_bucket* %74, %struct.rt6_exception* %75)
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.rt6_exception* @kzalloc(i32 16, i32 %78)
  store %struct.rt6_exception* %79, %struct.rt6_exception** %9, align 8
  %80 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %81 = icmp ne %struct.rt6_exception* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %117

85:                                               ; preds = %77
  %86 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %87 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %88 = getelementptr inbounds %struct.rt6_exception, %struct.rt6_exception* %87, i32 0, i32 2
  store %struct.rt6_info* %86, %struct.rt6_info** %88, align 8
  %89 = load i32, i32* @jiffies, align 4
  %90 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %91 = getelementptr inbounds %struct.rt6_exception, %struct.rt6_exception* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rt6_exception*, %struct.rt6_exception** %9, align 8
  %93 = getelementptr inbounds %struct.rt6_exception, %struct.rt6_exception* %92, i32 0, i32 0
  %94 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %95 = getelementptr inbounds %struct.rt6_exception_bucket, %struct.rt6_exception_bucket* %94, i32 0, i32 1
  %96 = call i32 @hlist_add_head_rcu(i32* %93, i32* %95)
  %97 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %98 = getelementptr inbounds %struct.rt6_exception_bucket, %struct.rt6_exception_bucket* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.net*, %struct.net** %5, align 8
  %102 = getelementptr inbounds %struct.net, %struct.net* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %109 = getelementptr inbounds %struct.rt6_exception_bucket, %struct.rt6_exception_bucket* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @FIB6_MAX_DEPTH, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %85
  %114 = load %struct.rt6_exception_bucket*, %struct.rt6_exception_bucket** %6, align 8
  %115 = call i32 @rt6_exception_remove_oldest(%struct.rt6_exception_bucket* %114)
  br label %116

116:                                              ; preds = %113, %85
  br label %117

117:                                              ; preds = %116, %82, %62, %50, %37
  %118 = call i32 @spin_unlock_bh(i32* @rt6_exception_lock)
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %117
  %122 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %123 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = call i32 @spin_lock_bh(i32* %125)
  %127 = load %struct.net*, %struct.net** %5, align 8
  %128 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %129 = call i32 @fib6_update_sernum(%struct.net* %127, %struct.fib6_info* %128)
  %130 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %131 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load %struct.net*, %struct.net** %5, align 8
  %136 = call i32 @fib6_force_start_gc(%struct.net* %135)
  br label %137

137:                                              ; preds = %121, %117
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rt6_exception_bucket* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.rt6_exception_bucket* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rt6_exception_bucket*) #1

declare dso_local i64 @fib6_nh_excptn_bucket_flushed(%struct.rt6_exception_bucket*) #1

declare dso_local i64 @dst_metric_raw(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @fib6_mtu(%struct.fib6_result*) #1

declare dso_local %struct.rt6_exception* @__rt6_find_exception_spinlock(%struct.rt6_exception_bucket**, i32*, %struct.in6_addr*) #1

declare dso_local i32 @rt6_remove_exception(%struct.rt6_exception_bucket*, %struct.rt6_exception*) #1

declare dso_local %struct.rt6_exception* @kzalloc(i32, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @rt6_exception_remove_oldest(%struct.rt6_exception_bucket*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fib6_update_sernum(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @fib6_force_start_gc(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
