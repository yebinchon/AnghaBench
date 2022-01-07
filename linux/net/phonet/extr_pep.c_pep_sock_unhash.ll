; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_sock_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { %struct.TYPE_2__, i32, %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pep_sock_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pep_sock_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pep_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.pep_sock* @pep_sk(%struct.sock* %5)
  store %struct.pep_sock* %6, %struct.pep_sock** %3, align 8
  store %struct.sock* null, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i32 @lock_sock(%struct.sock* %7)
  %9 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %10 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %9, i32 0, i32 2
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %15 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %14, i32 0, i32 2
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %4, align 8
  %17 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %18 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %17, i32 0, i32 2
  store %struct.sock* null, %struct.sock** %18, align 8
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @release_sock(%struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.pep_sock* @pep_sk(%struct.sock* %21)
  store %struct.pep_sock* %22, %struct.pep_sock** %3, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @lock_sock(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @sk_del_node_init(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %27, %struct.sock** %2, align 8
  br label %28

28:                                               ; preds = %13, %1
  %29 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %30 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %29, i32 0, i32 1
  %31 = call i64 @hlist_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %35 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @pn_sock_unhash(i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i32 @release_sock(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = icmp ne %struct.sock* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i32 @sock_put(%struct.sock* %44)
  br label %46

46:                                               ; preds = %43, %38
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @pn_sock_unhash(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
