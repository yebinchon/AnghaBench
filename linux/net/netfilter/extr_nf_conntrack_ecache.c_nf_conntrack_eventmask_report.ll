; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_eventmask_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_eventmask_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_ct_event_notifier = type { i32 (i32, %struct.nf_ct_event*)* }
%struct.nf_ct_event = type opaque
%struct.nf_conntrack_ecache = type { i64, i64, i32, i32 }
%struct.nf_ct_event.0 = type { i64, i32, %struct.nf_conn* }

@IPCT_DESTROY = common dso_local global i32 0, align 4
@NFCT_ECACHE_DESTROY_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_eventmask_report(i32 %0, %struct.nf_conn* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nf_ct_event_notifier*, align 8
  %12 = alloca %struct.nf_conntrack_ecache*, align 8
  %13 = alloca %struct.nf_ct_event.0, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %16 = call %struct.net* @nf_ct_net(%struct.nf_conn* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.net*, %struct.net** %10, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nf_ct_event_notifier* @rcu_dereference(i32 %21)
  store %struct.nf_ct_event_notifier* %22, %struct.nf_ct_event_notifier** %11, align 8
  %23 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %11, align 8
  %24 = icmp ne %struct.nf_ct_event_notifier* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %146

26:                                               ; preds = %4
  %27 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %28 = call %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn* %27)
  store %struct.nf_conntrack_ecache* %28, %struct.nf_conntrack_ecache** %12, align 8
  %29 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %30 = icmp ne %struct.nf_conntrack_ecache* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %146

32:                                               ; preds = %26
  %33 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %34 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %145

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %13, i32 0, i32 0
  %38 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %48

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  store i64 %49, i64* %37, align 8
  %50 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %13, i32 0, i32 1
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %13, i32 0, i32 2
  %53 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  store %struct.nf_conn* %53, %struct.nf_conn** %52, align 8
  %54 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %55 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i64 [ 0, %58 ], [ %62, %59 ]
  store i64 %64, i64* %14, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %14, align 8
  %68 = or i64 %66, %67
  %69 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %70 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = and i64 %68, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  br label %146

76:                                               ; preds = %63
  %77 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %11, align 8
  %78 = getelementptr inbounds %struct.nf_ct_event_notifier, %struct.nf_ct_event_notifier* %77, i32 0, i32 0
  %79 = load i32 (i32, %struct.nf_ct_event*)*, i32 (i32, %struct.nf_ct_event*)** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %14, align 8
  %83 = or i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = bitcast %struct.nf_ct_event.0* %13 to %struct.nf_ct_event*
  %86 = call i32 %79(i32 %84, %struct.nf_ct_event* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %76
  %90 = load i64, i64* %14, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %89, %76
  %93 = phi i1 [ true, %76 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %144

97:                                               ; preds = %92
  %98 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %99 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %98, i32 0, i32 0
  %100 = call i32 @spin_lock_bh(i32* %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @IPCT_DESTROY, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %111 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i64, i64* %7, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %120 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %114, %109
  %122 = load i32, i32* @NFCT_ECACHE_DESTROY_FAIL, align 4
  %123 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %124 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %132

125:                                              ; preds = %103
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %129 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %125, %121
  br label %140

133:                                              ; preds = %97
  %134 = load i64, i64* %14, align 8
  %135 = xor i64 %134, -1
  %136 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %12, align 8
  %137 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = and i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %133, %132
  %141 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_bh(i32* %142)
  br label %144

144:                                              ; preds = %140, %92
  br label %145

145:                                              ; preds = %144, %32
  br label %146

146:                                              ; preds = %145, %75, %31, %25
  %147 = call i32 (...) @rcu_read_unlock()
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference(i32) #1

declare dso_local %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
