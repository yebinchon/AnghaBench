; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_unhash_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c___sctp_unhash_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_hashbucket = type { i32 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common }
%struct.sctp_ep_common = type { i64, i32, %struct.TYPE_2__, %struct.sock* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }

@sctp_ep_hashtable = common dso_local global %struct.sctp_hashbucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_endpoint*)* @__sctp_unhash_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_unhash_endpoint(%struct.sctp_endpoint* %0) #0 {
  %2 = alloca %struct.sctp_endpoint*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sctp_hashbucket*, align 8
  %5 = alloca %struct.sctp_ep_common*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %2, align 8
  %6 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %7, i32 0, i32 3
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %10, i32 0, i32 0
  store %struct.sctp_ep_common* %11, %struct.sctp_ep_common** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @sock_net(%struct.sock* %12)
  %14 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sctp_ep_hashfn(i32 %13, i32 %17)
  %19 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** @sctp_ep_hashtable, align 8
  %22 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %21, i64 %24
  store %struct.sctp_hashbucket* %25, %struct.sctp_hashbucket** %4, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @rcu_access_pointer(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i32 @reuseport_detach_sock(%struct.sock* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %35, i32 0, i32 0
  %37 = call i32 @write_lock(i32* %36)
  %38 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %5, align 8
  %39 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %38, i32 0, i32 1
  %40 = call i32 @hlist_del_init(i32* %39)
  %41 = load %struct.sctp_hashbucket*, %struct.sctp_hashbucket** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_hashbucket, %struct.sctp_hashbucket* %41, i32 0, i32 0
  %43 = call i32 @write_unlock(i32* %42)
  ret void
}

declare dso_local i64 @sctp_ep_hashfn(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @reuseport_detach_sock(%struct.sock*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
