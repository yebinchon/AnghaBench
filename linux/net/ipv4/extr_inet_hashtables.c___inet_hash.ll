; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c___inet_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c___inet_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { %struct.inet_listen_hashbucket* }
%struct.inet_listen_hashbucket = type { i32, i32, i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_RCU_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__inet_hash(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_hashinfo*, align 8
  %7 = alloca %struct.inet_listen_hashbucket*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %13, align 8
  store %struct.inet_hashinfo* %14, %struct.inet_hashinfo** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_LISTEN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i32 @inet_ehash_nolisten(%struct.sock* %21, %struct.sock* %22)
  store i32 0, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @sk_unhashed(%struct.sock* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %32 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %31, i32 0, i32 0
  %33 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %32, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i64 @inet_sk_listen_hashfn(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %33, i64 %35
  store %struct.inet_listen_hashbucket* %36, %struct.inet_listen_hashbucket** %7, align 8
  %37 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %38 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %24
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %47 = call i32 @inet_reuseport_add_sock(%struct.sock* %45, %struct.inet_listen_hashbucket* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %96

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* @CONFIG_IPV6, align 4
  %54 = call i64 @IS_ENABLED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_INET6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 3
  %70 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %71 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %70, i32 0, i32 2
  %72 = call i32 @hlist_add_tail_rcu(i32* %69, i32* %71)
  br label %79

73:                                               ; preds = %61, %56, %52
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 3
  %76 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %77 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %76, i32 0, i32 2
  %78 = call i32 @hlist_add_head_rcu(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %6, align 8
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  %82 = call i32 @inet_hash2(%struct.inet_hashinfo* %80, %struct.sock* %81)
  %83 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %84 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = load i32, i32* @SOCK_RCU_FREE, align 4
  %89 = call i32 @sock_set_flag(%struct.sock* %87, i32 %88)
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = call i32 @sock_net(%struct.sock* %90)
  %92 = load %struct.sock*, %struct.sock** %4, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @sock_prot_inuse_add(i32 %91, %struct.TYPE_4__* %94, i32 1)
  br label %96

96:                                               ; preds = %79, %50
  %97 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %7, align 8
  %98 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @inet_ehash_nolisten(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local i64 @inet_sk_listen_hashfn(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inet_reuseport_add_sock(%struct.sock*, %struct.inet_listen_hashbucket*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hlist_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @inet_hash2(%struct.inet_hashinfo*, %struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_prot_inuse_add(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
