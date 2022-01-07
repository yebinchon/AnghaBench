; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c___sctp_put_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c___sctp_put_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_bind_hashbucket = type { i32 }
%struct.sock = type { i32 }
%struct.sctp_bind_bucket = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sctp_bind_bucket* }

@sctp_port_hashtable = common dso_local global %struct.sctp_bind_hashbucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__sctp_put_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_put_port(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sctp_bind_hashbucket*, align 8
  %4 = alloca %struct.sctp_bind_bucket*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sctp_bind_hashbucket*, %struct.sctp_bind_hashbucket** @sctp_port_hashtable, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @sock_net(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @sctp_phashfn(i32 %7, i64 %11)
  %13 = getelementptr inbounds %struct.sctp_bind_hashbucket, %struct.sctp_bind_hashbucket* %5, i64 %12
  store %struct.sctp_bind_hashbucket* %13, %struct.sctp_bind_hashbucket** %3, align 8
  %14 = load %struct.sctp_bind_hashbucket*, %struct.sctp_bind_hashbucket** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_bind_hashbucket, %struct.sctp_bind_hashbucket* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call %struct.TYPE_3__* @sctp_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %19, align 8
  store %struct.sctp_bind_bucket* %20, %struct.sctp_bind_bucket** %4, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 @__sk_del_bind_node(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_3__* @sctp_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.sctp_bind_bucket* null, %struct.sctp_bind_bucket** %25, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.sctp_bind_bucket*, %struct.sctp_bind_bucket** %4, align 8
  %30 = call i32 @sctp_bucket_destroy(%struct.sctp_bind_bucket* %29)
  %31 = load %struct.sctp_bind_hashbucket*, %struct.sctp_bind_hashbucket** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_bind_hashbucket, %struct.sctp_bind_hashbucket* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local i64 @sctp_phashfn(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @__sk_del_bind_node(%struct.sock*) #1

declare dso_local i32 @sctp_bucket_destroy(%struct.sctp_bind_bucket*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
