; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i32 }
%struct.inet_sock = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ping_unhash(isk=%p,isk->num=%u)\0A\00", align 1
@ping_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ping_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_sock* @inet_sk(%struct.sock* %4)
  store %struct.inet_sock* %5, %struct.inet_sock** %3, align 8
  %6 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %7 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %8 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.inet_sock* %6, i64 %9)
  %11 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ping_table, i32 0, i32 0))
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i64 @sk_hashed(%struct.sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = call i32 @hlist_nulls_del(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = call i32 @sk_nulls_node_init(i32* %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i32 @sock_put(%struct.sock* %22)
  %24 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %27 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call i32 @sock_net(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sock_prot_inuse_add(i32 %29, i32 %32, i32 -1)
  br label %34

34:                                               ; preds = %15, %1
  %35 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ping_table, i32 0, i32 0))
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.inet_sock*, i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @sk_hashed(%struct.sock*) #1

declare dso_local i32 @hlist_nulls_del(i32*) #1

declare dso_local i32 @sk_nulls_node_init(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
