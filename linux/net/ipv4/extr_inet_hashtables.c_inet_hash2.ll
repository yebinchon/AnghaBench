; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_hash2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_hash2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_hashinfo = type { i32 }
%struct.sock = type { i64, i64 }
%struct.inet_listen_hashbucket = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_hashinfo*, %struct.sock*)* @inet_hash2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_hash2(%struct.inet_hashinfo* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_listen_hashbucket*, align 8
  store %struct.inet_hashinfo* %0, %struct.inet_hashinfo** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %7 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.inet_listen_hashbucket* @inet_lhash2_bucket_sk(%struct.inet_hashinfo* %12, %struct.sock* %13)
  store %struct.inet_listen_hashbucket* %14, %struct.inet_listen_hashbucket** %5, align 8
  %15 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %16 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %11
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %33 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %32, i32 0, i32 2
  %34 = call i32 @hlist_add_tail_rcu(i32* %31, i32* %33)
  br label %42

35:                                               ; preds = %22, %11
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %40 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %39, i32 0, i32 2
  %41 = call i32 @hlist_add_head_rcu(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %44 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %48 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %42, %10
  ret void
}

declare dso_local %struct.inet_listen_hashbucket* @inet_lhash2_bucket_sk(%struct.inet_hashinfo*, %struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_tail_rcu(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
