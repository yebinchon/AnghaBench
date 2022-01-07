; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_kill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { i32, %struct.inet_bind_hashbucket* }
%struct.inet_bind_hashbucket = type { i32 }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_timewait_sock*)* @inet_twsk_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_twsk_kill(%struct.inet_timewait_sock* %0) #0 {
  %2 = alloca %struct.inet_timewait_sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inet_bind_hashbucket*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %2, align 8
  %6 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %7 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %9, align 8
  store %struct.inet_hashinfo* %10, %struct.inet_hashinfo** %3, align 8
  %11 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %13 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %11, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %19 = bitcast %struct.inet_timewait_sock* %18 to %struct.sock*
  %20 = call i32 @sk_nulls_del_node_init_rcu(%struct.sock* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %24 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %23, i32 0, i32 1
  %25 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %24, align 8
  %26 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %27 = call i32 @twsk_net(%struct.inet_timewait_sock* %26)
  %28 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %29 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %32 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @inet_bhashfn(i32 %27, i32 %30, i32 %33)
  %35 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %25, i64 %34
  store %struct.inet_bind_hashbucket* %35, %struct.inet_bind_hashbucket** %5, align 8
  %36 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %5, align 8
  %37 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %40 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %41 = call i32 @inet_twsk_bind_unhash(%struct.inet_timewait_sock* %39, %struct.inet_hashinfo* %40)
  %42 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %5, align 8
  %43 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %46 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @atomic_dec(i32* %48)
  %50 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %2, align 8
  %51 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %50)
  ret void
}

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sk_nulls_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @inet_bhashfn(i32, i32, i32) #1

declare dso_local i32 @twsk_net(%struct.inet_timewait_sock*) #1

declare dso_local i32 @inet_twsk_bind_unhash(%struct.inet_timewait_sock*, %struct.inet_hashinfo*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
