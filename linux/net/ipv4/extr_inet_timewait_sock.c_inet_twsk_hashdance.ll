; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_hashdance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_hashdance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i32 }
%struct.inet_hashinfo = type { i32, %struct.inet_bind_hashbucket* }
%struct.inet_bind_hashbucket = type { i32 }
%struct.inet_sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__* }
%struct.inet_ehash_bucket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_twsk_hashdance(%struct.inet_timewait_sock* %0, %struct.sock* %1, %struct.inet_hashinfo* %2) #0 {
  %4 = alloca %struct.inet_timewait_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_hashinfo*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca %struct.inet_ehash_bucket*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inet_bind_hashbucket*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.inet_hashinfo* %2, %struct.inet_hashinfo** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.inet_sock* @inet_sk(%struct.sock* %12)
  store %struct.inet_sock* %13, %struct.inet_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %14)
  store %struct.inet_connection_sock* %15, %struct.inet_connection_sock** %8, align 8
  %16 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo* %16, i32 %19)
  store %struct.inet_ehash_bucket* %20, %struct.inet_ehash_bucket** %9, align 8
  %21 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %21, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %27 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %26, i32 0, i32 1
  %28 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %27, align 8
  %29 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %30 = call i32 @twsk_net(%struct.inet_timewait_sock* %29)
  %31 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %32 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %35 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @inet_bhashfn(i32 %30, i32 %33, i32 %36)
  %38 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %28, i64 %37
  store %struct.inet_bind_hashbucket* %38, %struct.inet_bind_hashbucket** %11, align 8
  %39 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %11, align 8
  %40 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %46 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %45, i32 0, i32 1
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %55 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %56 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @inet_twsk_add_bind_node(%struct.inet_timewait_sock* %54, i32* %58)
  %60 = load %struct.inet_bind_hashbucket*, %struct.inet_bind_hashbucket** %11, align 8
  %61 = getelementptr inbounds %struct.inet_bind_hashbucket, %struct.inet_bind_hashbucket* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %66 = load %struct.inet_ehash_bucket*, %struct.inet_ehash_bucket** %9, align 8
  %67 = getelementptr inbounds %struct.inet_ehash_bucket, %struct.inet_ehash_bucket* %66, i32 0, i32 0
  %68 = call i32 @inet_twsk_add_node_rcu(%struct.inet_timewait_sock* %65, i32* %67)
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = call i64 @__sk_nulls_del_node_init_rcu(%struct.sock* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %3
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = call i32 @sock_net(%struct.sock* %73)
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sock_prot_inuse_add(i32 %74, i32 %77, i32 -1)
  br label %79

79:                                               ; preds = %72, %3
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %83 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %82, i32 0, i32 0
  %84 = call i32 @refcount_set(i32* %83, i32 3)
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo*, i32) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i64 @inet_bhashfn(i32, i32, i32) #1

declare dso_local i32 @twsk_net(%struct.inet_timewait_sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @inet_twsk_add_bind_node(%struct.inet_timewait_sock*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet_twsk_add_node_rcu(%struct.inet_timewait_sock*, i32*) #1

declare dso_local i64 @__sk_nulls_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
