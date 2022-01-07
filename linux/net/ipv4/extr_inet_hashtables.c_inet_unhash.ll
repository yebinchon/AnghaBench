; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { %struct.inet_listen_hashbucket* }
%struct.inet_listen_hashbucket = type { i32, i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca %struct.inet_listen_hashbucket*, align 8
  %5 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %10, align 8
  store %struct.inet_hashinfo* %11, %struct.inet_hashinfo** %3, align 8
  store %struct.inet_listen_hashbucket* null, %struct.inet_listen_hashbucket** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i64 @sk_unhashed(%struct.sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_LISTEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %24 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %23, i32 0, i32 0
  %25 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call i64 @inet_sk_listen_hashfn(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %25, i64 %27
  store %struct.inet_listen_hashbucket* %28, %struct.inet_listen_hashbucket** %4, align 8
  %29 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %30 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %29, i32 0, i32 1
  store i32* %30, i32** %5, align 8
  br label %37

31:                                               ; preds = %16
  %32 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %32, i32 %35)
  store i32* %36, i32** %5, align 8
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = call i64 @sk_unhashed(%struct.sock* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %76

44:                                               ; preds = %37
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @rcu_access_pointer(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = call i32 @reuseport_detach_sock(%struct.sock* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %55 = icmp ne %struct.inet_listen_hashbucket* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = call i32 @inet_unhash2(%struct.inet_hashinfo* %57, %struct.sock* %58)
  %60 = load %struct.sock*, %struct.sock** %2, align 8
  %61 = call i32 @__sk_del_node_init(%struct.sock* %60)
  %62 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %4, align 8
  %63 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  br label %69

66:                                               ; preds = %53
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = call i32 @__sk_nulls_del_node_init_rcu(%struct.sock* %67)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load %struct.sock*, %struct.sock** %2, align 8
  %71 = call i32 @sock_net(%struct.sock* %70)
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @sock_prot_inuse_add(i32 %71, %struct.TYPE_4__* %74, i32 -1)
  br label %76

76:                                               ; preds = %69, %43
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %79

79:                                               ; preds = %76, %15
  ret void
}

declare dso_local i64 @sk_unhashed(%struct.sock*) #1

declare dso_local i64 @inet_sk_listen_hashfn(%struct.sock*) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @reuseport_detach_sock(%struct.sock*) #1

declare dso_local i32 @inet_unhash2(%struct.inet_hashinfo*, %struct.sock*) #1

declare dso_local i32 @__sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @__sk_nulls_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
