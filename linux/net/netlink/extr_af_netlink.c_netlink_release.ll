; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, i32*, i32*, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.netlink_sock = type { i32, i32, i32, i64, i64, i32, i32 (i32, i32)*, i32 }
%struct.netlink_notify = type { i64, i64, i32 }
%struct.listeners = type { i32 }

@NETLINK_GENERIC = common dso_local global i64 0, align 8
@genl_sk_destructing_cnt = common dso_local global i32 0, align 4
@genl_sk_destructing_waitq = common dso_local global i32 0, align 4
@netlink_chain = common dso_local global i32 0, align 4
@NETLINK_URELEASE = common dso_local global i32 0, align 4
@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@rcu = common dso_local global i32 0, align 4
@netlink_proto = common dso_local global i32 0, align 4
@deferred_put_nlk_sk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @netlink_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_notify, align 8
  %8 = alloca %struct.listeners*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %188

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @netlink_remove(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @sock_orphan(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %20)
  store %struct.netlink_sock* %21, %struct.netlink_sock** %5, align 8
  %22 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %23 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %22, i32 0, i32 6
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %30 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %42 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %41, i32 0, i32 6
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @sock_net(%struct.sock* %44)
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 %43(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %15
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NETLINK_GENERIC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = call i64 @atomic_dec_return(i32* @genl_sk_destructing_cnt)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @wake_up(i32* @genl_sk_destructing_waitq)
  br label %65

65:                                               ; preds = %63, %60, %54
  %66 = load %struct.socket*, %struct.socket** %3, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %67, align 8
  %68 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %69 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %68, i32 0, i32 5
  %70 = call i32 @wake_up_interruptible_all(i32* %69)
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 1
  %73 = call i32 @skb_queue_purge(i32* %72)
  %74 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %75 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %65
  %79 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %80 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %7, i32 0, i32 0
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %84, align 8
  %88 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %7, i32 0, i32 1
  %89 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %90 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %88, align 8
  %92 = getelementptr inbounds %struct.netlink_notify, %struct.netlink_notify* %7, i32 0, i32 2
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = call i32 @sock_net(%struct.sock* %93)
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @NETLINK_URELEASE, align 4
  %96 = call i32 @blocking_notifier_call_chain(i32* @netlink_chain, i32 %95, %struct.netlink_notify* %7)
  br label %97

97:                                               ; preds = %83, %78, %65
  %98 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %99 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @module_put(i32 %100)
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = call i64 @netlink_is_kernel(%struct.sock* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %178

105:                                              ; preds = %97
  %106 = call i32 (...) @netlink_table_grab()
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @BUG_ON(i32 %115)
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %118 = load %struct.sock*, %struct.sock** %4, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %122, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %176

126:                                              ; preds = %105
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %128 = load %struct.sock*, %struct.sock** %4, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.listeners* @nl_deref_protected(i32 %133)
  store %struct.listeners* %134, %struct.listeners** %8, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %136 = load %struct.sock*, %struct.sock** %4, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @RCU_INIT_POINTER(i32 %141, i32* null)
  %143 = load %struct.listeners*, %struct.listeners** %8, align 8
  %144 = load i32, i32* @rcu, align 4
  %145 = call i32 @kfree_rcu(%struct.listeners* %143, i32 %144)
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %147 = load %struct.sock*, %struct.sock** %4, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %153 = load %struct.sock*, %struct.sock** %4, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  store i32* null, i32** %157, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %159 = load %struct.sock*, %struct.sock** %4, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  store i32* null, i32** %163, align 8
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %165 = load %struct.sock*, %struct.sock** %4, align 8
  %166 = getelementptr inbounds %struct.sock, %struct.sock* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %171 = load %struct.sock*, %struct.sock** %4, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %126, %105
  %177 = call i32 (...) @netlink_table_ungrab()
  br label %178

178:                                              ; preds = %176, %97
  %179 = call i32 (...) @local_bh_disable()
  %180 = load %struct.sock*, %struct.sock** %4, align 8
  %181 = call i32 @sock_net(%struct.sock* %180)
  %182 = call i32 @sock_prot_inuse_add(i32 %181, i32* @netlink_proto, i32 -1)
  %183 = call i32 (...) @local_bh_enable()
  %184 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %185 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %184, i32 0, i32 1
  %186 = load i32, i32* @deferred_put_nlk_sk, align 4
  %187 = call i32 @call_rcu(i32* %185, i32 %186)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %178, %14
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @netlink_remove(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.netlink_notify*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.listeners* @nl_deref_protected(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.listeners*, i32) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
