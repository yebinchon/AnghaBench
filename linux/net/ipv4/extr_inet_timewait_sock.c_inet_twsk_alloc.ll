; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.inet_timewait_death_row* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.inet_timewait_death_row = type { i64, i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@tw_timer_handler = common dso_local global i32 0, align 4
@TIMER_PINNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet_timewait_sock* @inet_twsk_alloc(%struct.sock* %0, %struct.inet_timewait_death_row* %1, i32 %2) #0 {
  %4 = alloca %struct.inet_timewait_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_timewait_death_row*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_timewait_sock*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.inet_timewait_death_row* %1, %struct.inet_timewait_death_row** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %6, align 8
  %11 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %6, align 8
  %14 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.inet_timewait_sock* null, %struct.inet_timewait_sock** %4, align 8
  br label %135

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.inet_timewait_sock* @kmem_cache_alloc(i32 %25, i32 %26)
  store %struct.inet_timewait_sock* %27, %struct.inet_timewait_sock** %8, align 8
  %28 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %29 = icmp ne %struct.inet_timewait_sock* %28, null
  br i1 %29, label %30, label %133

30:                                               ; preds = %18
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call %struct.inet_sock* @inet_sk(%struct.sock* %31)
  store %struct.inet_sock* %32, %struct.inet_sock** %9, align 8
  %33 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %6, align 8
  %34 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %35 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %34, i32 0, i32 19
  store %struct.inet_timewait_death_row* %33, %struct.inet_timewait_death_row** %35, align 8
  %36 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %37 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %40 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %42 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %45 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %44, i32 0, i32 17
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %50 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %49, i32 0, i32 16
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %55 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  %56 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %57 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %60 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @TCP_TIME_WAIT, align 4
  %62 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %63 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %66 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %68 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %71 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %76 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sock*, %struct.sock** %5, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %81 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %86 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %91 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %96 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %98 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %100 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %103 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %108 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %107, i32 0, i32 1
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %108, align 8
  %109 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %110 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %109, i32 0, i32 4
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = call i32 @atomic64_read(i32* %112)
  %114 = call i32 @atomic64_set(i32* %110, i32 %113)
  %115 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = call i32 @sock_net(%struct.sock* %116)
  %118 = call i32 @twsk_net_set(%struct.inet_timewait_sock* %115, i32 %117)
  %119 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %120 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %119, i32 0, i32 3
  %121 = load i32, i32* @tw_timer_handler, align 4
  %122 = load i32, i32* @TIMER_PINNED, align 4
  %123 = call i32 @timer_setup(i32* %120, i32 %121, i32 %122)
  %124 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %125 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %124, i32 0, i32 2
  %126 = call i32 @refcount_set(i32* %125, i32 0)
  %127 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  %128 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @__module_get(i32 %131)
  br label %133

133:                                              ; preds = %30, %18
  %134 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %8, align 8
  store %struct.inet_timewait_sock* %134, %struct.inet_timewait_sock** %4, align 8
  br label %135

135:                                              ; preds = %133, %17
  %136 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  ret %struct.inet_timewait_sock* %136
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.inet_timewait_sock* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @twsk_net_set(%struct.inet_timewait_sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
