; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_dump_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_table = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.net = type { i32 }
%struct.fib6_walker = type { i64, i64, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }

@FWS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_table*, %struct.sk_buff*, %struct.netlink_callback*)* @fib6_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_dump_table(%struct.fib6_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca %struct.fib6_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib6_walker*, align 8
  %9 = alloca i32, align 4
  store %struct.fib6_table* %0, %struct.fib6_table** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @sock_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.fib6_walker*
  store %struct.fib6_walker* %20, %struct.fib6_walker** %8, align 8
  %21 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %22 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %21, i32 0, i32 1
  %23 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %24 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %23, i32 0, i32 3
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %3
  %32 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %33 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %35 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %37 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %39 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %43 = call i32 @fib6_walk(%struct.net* %41, %struct.fib6_walker* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %45 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %31
  %50 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %51 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  store i64 1, i64* %53, align 8
  %54 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %55 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %61 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 5
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %49, %31
  br label %127

65:                                               ; preds = %3
  %66 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %67 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %72 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %70, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %65
  %79 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %80 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %86 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 5
  store i64 %84, i64* %88, align 8
  %89 = load i32, i32* @FWS_INIT, align 4
  %90 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %91 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %93 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %96 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %95, i32 0, i32 4
  store %struct.TYPE_2__* %94, %struct.TYPE_2__** %96, align 8
  %97 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %98 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %101 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %103 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %107

104:                                              ; preds = %65
  %105 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %106 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %78
  %108 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %109 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %108, i32 0, i32 0
  %110 = call i32 @spin_lock_bh(i32* %109)
  %111 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %112 = call i32 @fib6_walk_continue(%struct.fib6_walker* %111)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %114 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock_bh(i32* %114)
  %116 = load i32, i32* %9, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.net*, %struct.net** %7, align 8
  %120 = load %struct.fib6_walker*, %struct.fib6_walker** %8, align 8
  %121 = call i32 @fib6_walker_unlink(%struct.net* %119, %struct.fib6_walker* %120)
  %122 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %123 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 4
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %118, %107
  br label %127

127:                                              ; preds = %126, %64
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fib6_walk(%struct.net*, %struct.fib6_walker*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fib6_walk_continue(%struct.fib6_walker*) #1

declare dso_local i32 @fib6_walker_unlink(%struct.net*, %struct.fib6_walker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
