; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c_inet_ehash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { i32 }
%struct.hlist_nulls_head = type { i32 }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_ehash_insert(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_hashinfo*, align 8
  %6 = alloca %struct.hlist_nulls_head*, align 8
  %7 = alloca %struct.inet_ehash_bucket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %14, align 8
  store %struct.inet_hashinfo* %15, %struct.inet_hashinfo** %5, align 8
  store i32 1, i32* %9, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @sk_unhashed(%struct.sock* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @sk_ehashfn(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %5, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo* %26, i32 %29)
  store %struct.inet_ehash_bucket* %30, %struct.inet_ehash_bucket** %7, align 8
  %31 = load %struct.inet_ehash_bucket*, %struct.inet_ehash_bucket** %7, align 8
  %32 = getelementptr inbounds %struct.inet_ehash_bucket, %struct.inet_ehash_bucket* %31, i32 0, i32 0
  store %struct.hlist_nulls_head* %32, %struct.hlist_nulls_head** %6, align 8
  %33 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %5, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @inet_ehash_lockp(%struct.inet_hashinfo* %33, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = icmp ne %struct.sock* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %2
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = call i32 @sk_nulls_del_node_init_rcu(%struct.sock* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %42, %2
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = load %struct.hlist_nulls_head*, %struct.hlist_nulls_head** %6, align 8
  %60 = call i32 @__sk_nulls_add_node_rcu(%struct.sock* %58, %struct.hlist_nulls_head* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local i32 @sk_ehashfn(%struct.sock*) #1

declare dso_local %struct.inet_ehash_bucket* @inet_ehash_bucket(%struct.inet_hashinfo*, i32) #1

declare dso_local i32* @inet_ehash_lockp(%struct.inet_hashinfo*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sk_nulls_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @__sk_nulls_add_node_rcu(%struct.sock*, %struct.hlist_nulls_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
