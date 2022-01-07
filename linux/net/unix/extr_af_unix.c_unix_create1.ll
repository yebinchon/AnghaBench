; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_create1.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_create1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }
%struct.unix_sock = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@unix_nr_socks = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@unix_proto = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@unix_write_space = common dso_local global i32 0, align 4
@unix_sock_destructor = common dso_local global i32 0, align 4
@unix_dgram_peer_wake_relay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32)* @unix_create1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @unix_create1(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.unix_sock*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  %9 = call i32 @atomic_long_inc(i32* @unix_nr_socks)
  %10 = call i32 @atomic_long_read(i32* @unix_nr_socks)
  %11 = call i32 (...) @get_max_files()
  %12 = mul nsw i32 2, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = load i32, i32* @PF_UNIX, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.sock* @sk_alloc(%struct.net* %16, i32 %17, i32 %18, i32* @unix_proto, i32 %19)
  store %struct.sock* %20, %struct.sock** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = icmp ne %struct.sock* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %77

24:                                               ; preds = %15
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = call i32 @sock_init_data(%struct.socket* %25, %struct.sock* %26)
  %28 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @unix_write_space, align 4
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @unix_sock_destructor, align 4
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = call %struct.unix_sock* @unix_sk(%struct.sock* %43)
  store %struct.unix_sock* %44, %struct.unix_sock** %8, align 8
  %45 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %46 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %49 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %52 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %51, i32 0, i32 6
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %55 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %54, i32 0, i32 5
  %56 = call i32 @atomic_long_set(i32* %55, i32 0)
  %57 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %58 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %61 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %60, i32 0, i32 3
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %64 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %63, i32 0, i32 2
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %67 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %66, i32 0, i32 1
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.unix_sock*, %struct.unix_sock** %8, align 8
  %70 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %69, i32 0, i32 0
  %71 = load i32, i32* @unix_dgram_peer_wake_relay, align 4
  %72 = call i32 @init_waitqueue_func_entry(i32* %70, i32 %71)
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = call i32 @unix_sockets_unbound(%struct.sock* %73)
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = call i32 @unix_insert_socket(i32 %74, %struct.sock* %75)
  br label %77

77:                                               ; preds = %24, %23, %14
  %78 = load %struct.sock*, %struct.sock** %7, align 8
  %79 = icmp eq %struct.sock* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @atomic_long_dec(i32* @unix_nr_socks)
  br label %91

82:                                               ; preds = %77
  %83 = call i32 (...) @local_bh_disable()
  %84 = load %struct.sock*, %struct.sock** %7, align 8
  %85 = call i32 @sock_net(%struct.sock* %84)
  %86 = load %struct.sock*, %struct.sock** %7, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sock_prot_inuse_add(i32 %85, i32 %88, i32 1)
  %90 = call i32 (...) @local_bh_enable()
  br label %91

91:                                               ; preds = %82, %80
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %92
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @get_max_files(...) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_waitqueue_func_entry(i32*, i32) #1

declare dso_local i32 @unix_insert_socket(i32, %struct.sock*) #1

declare dso_local i32 @unix_sockets_unbound(%struct.sock*) #1

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
