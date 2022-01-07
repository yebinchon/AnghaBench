; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_sock_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_sock_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.unix_sock = type { i64 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Attempt to release alive unix socket: %p\0A\00", align 1
@unix_nr_socks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @unix_sock_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_sock_destructor(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.unix_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.unix_sock* @unix_sk(%struct.sock* %4)
  store %struct.unix_sock* %5, %struct.unix_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 3
  %8 = call i32 @skb_queue_purge(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 2
  %11 = call i32 @refcount_read(i32* %10)
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sk_unhashed(%struct.sock* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load i32, i32* @SOCK_DEAD, align 4
  %25 = call i32 @sock_flag(%struct.sock* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.sock* %28)
  br label %50

30:                                               ; preds = %1
  %31 = load %struct.unix_sock*, %struct.unix_sock** %3, align 8
  %32 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.unix_sock*, %struct.unix_sock** %3, align 8
  %37 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @unix_release_addr(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = call i32 @atomic_long_dec(i32* @unix_nr_socks)
  %42 = call i32 (...) @local_bh_disable()
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i32 @sock_net(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sock_prot_inuse_add(i32 %44, i32 %47, i32 -1)
  %49 = call i32 (...) @local_bh_enable()
  br label %50

50:                                               ; preds = %40, %27
  ret void
}

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @sk_unhashed(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.sock*) #1

declare dso_local i32 @unix_release_addr(i64) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
