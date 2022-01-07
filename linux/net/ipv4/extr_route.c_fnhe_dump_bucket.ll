; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_dump_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fnhe_dump_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fnhe_hash_bucket = type { i32 }
%struct.fib_nh_exception = type { i32, i32, i32, i32, i64, i32 }
%struct.rtable = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FNHE_HASH_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.netlink_callback*, i32, %struct.fnhe_hash_bucket*, i32, i32*, i32, i32)* @fnhe_dump_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnhe_dump_bucket(%struct.net* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, i32 %3, %struct.fnhe_hash_bucket* %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.netlink_callback*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fnhe_hash_bucket*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.fib_nh_exception*, align 8
  %22 = alloca %struct.rtable*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_4__, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.fnhe_hash_bucket* %4, %struct.fnhe_hash_bucket** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %25

25:                                               ; preds = %123, %9
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* @FNHE_HASH_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %25
  %30 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %15, align 8
  %31 = load i32, i32* %20, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %30, i64 %32
  %34 = getelementptr inbounds %struct.fnhe_hash_bucket, %struct.fnhe_hash_bucket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rcu_dereference(i32 %35)
  %37 = bitcast i8* %36 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %37, %struct.fib_nh_exception** %21, align 8
  br label %38

38:                                               ; preds = %116, %29
  %39 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %40 = icmp ne %struct.fib_nh_exception* %39, null
  br i1 %40, label %41, label %122

41:                                               ; preds = %38
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %112

47:                                               ; preds = %41
  %48 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %49 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %112

54:                                               ; preds = %47
  %55 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %56 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %62 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @time_after(i32 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %112

67:                                               ; preds = %59, %54
  %68 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %69 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @rcu_dereference(i32 %70)
  %72 = bitcast i8* %71 to %struct.rtable*
  store %struct.rtable* %72, %struct.rtable** %22, align 8
  %73 = load %struct.rtable*, %struct.rtable** %22, align 8
  %74 = icmp ne %struct.rtable* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %77 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @rcu_dereference(i32 %78)
  %80 = bitcast i8* %79 to %struct.rtable*
  store %struct.rtable* %80, %struct.rtable** %22, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.rtable*, %struct.rtable** %22, align 8
  %83 = icmp ne %struct.rtable* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %112

85:                                               ; preds = %81
  %86 = load %struct.net*, %struct.net** %11, align 8
  %87 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %88 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rtable*, %struct.rtable** %22, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %94 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @NETLINK_CB(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @rt_fill_info(%struct.net* %86, i32 %89, i32 0, %struct.rtable* %90, i32 %91, i32* null, %struct.sk_buff* %92, i32 %99, i32 %104, i32 %105)
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %85
  %110 = load i32, i32* %23, align 4
  store i32 %110, i32* %10, align 4
  br label %127

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111, %84, %66, %53, %46
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.fib_nh_exception*, %struct.fib_nh_exception** %21, align 8
  %118 = getelementptr inbounds %struct.fib_nh_exception, %struct.fib_nh_exception* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @rcu_dereference(i32 %119)
  %121 = bitcast i8* %120 to %struct.fib_nh_exception*
  store %struct.fib_nh_exception* %121, %struct.fib_nh_exception** %21, align 8
  br label %38

122:                                              ; preds = %38
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %20, align 4
  br label %25

126:                                              ; preds = %25
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %109
  %128 = load i32, i32* %10, align 4
  ret i32 %128
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @rt_fill_info(%struct.net*, i32, i32, %struct.rtable*, i32, i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
