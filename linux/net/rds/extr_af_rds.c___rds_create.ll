; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c___rds_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c___rds_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }
%struct.sock = type { i32, i32 }
%struct.rds_sock = type { i32, i32*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rds_proto_ops = common dso_local global i32 0, align 4
@rds_sock_destruct = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@rds_sock_lock = common dso_local global i32 0, align 4
@rds_sock_list = common dso_local global i32 0, align 4
@rds_sock_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sock*, i32)* @__rds_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rds_create(%struct.socket* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_sock*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @sock_init_data(%struct.socket* %8, %struct.sock* %9)
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  store i32* @rds_proto_ops, i32** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @rds_sock_destruct, align 4
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %19)
  store %struct.rds_sock* %20, %struct.rds_sock** %7, align 8
  %21 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %22 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %21, i32 0, i32 12
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %25 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %24, i32 0, i32 11
  %26 = call i32 @rwlock_init(i32* %25)
  %27 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %28 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %27, i32 0, i32 10
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %31 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %34 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %33, i32 0, i32 8
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %37 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %36, i32 0, i32 7
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %40 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %39, i32 0, i32 6
  %41 = call i32 @rds_message_zcopy_queue_init(i32* %40)
  %42 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %43 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %42, i32 0, i32 5
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load i32, i32* @RB_ROOT, align 4
  %46 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %47 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %49 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %51 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %53 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = call i32 @spin_lock_bh(i32* @rds_sock_lock)
  %55 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %56 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %56, i32* @rds_sock_list)
  %58 = load i32, i32* @rds_sock_count, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @rds_sock_count, align 4
  %60 = call i32 @spin_unlock_bh(i32* @rds_sock_lock)
  ret i32 0
}

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rds_message_zcopy_queue_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
