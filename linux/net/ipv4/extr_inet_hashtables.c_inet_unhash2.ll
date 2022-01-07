; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_unhash2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_unhash2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_hashinfo = type { i32 }
%struct.sock = type { i32 }
%struct.inet_listen_hashbucket = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_hashinfo*, %struct.sock*)* @inet_unhash2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_unhash2(%struct.inet_hashinfo* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.inet_hashinfo*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_listen_hashbucket*, align 8
  store %struct.inet_hashinfo* %0, %struct.inet_hashinfo** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %7 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @hlist_unhashed(i32* %13)
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %2
  br label %36

18:                                               ; preds = %10
  %19 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %3, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call %struct.inet_listen_hashbucket* @inet_lhash2_bucket_sk(%struct.inet_hashinfo* %19, %struct.sock* %20)
  store %struct.inet_listen_hashbucket* %21, %struct.inet_listen_hashbucket** %5, align 8
  %22 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %23 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @hlist_del_init_rcu(i32* %27)
  %29 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %30 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %5, align 8
  %34 = getelementptr inbounds %struct.inet_listen_hashbucket, %struct.inet_listen_hashbucket* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_listen_hashbucket* @inet_lhash2_bucket_sk(%struct.inet_hashinfo*, %struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
