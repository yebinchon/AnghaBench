; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32* }
%struct.mutex = type { i32 }
%struct.sock = type { i32, i32 }
%struct.netlink_sock = type { i32, %struct.mutex*, %struct.mutex }

@netlink_ops = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlink_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nlk_cb_mutex_keys = common dso_local global i64 0, align 8
@nlk_cb_mutex_key_strings = common dso_local global i32* null, align 8
@netlink_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, %struct.mutex*, i32, i32)* @__netlink_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__netlink_create(%struct.net* %0, %struct.socket* %1, %struct.mutex* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.netlink_sock*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.mutex* %2, %struct.mutex** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  store i32* @netlink_ops, i32** %15, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load i32, i32* @PF_NETLINK, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.sock* @sk_alloc(%struct.net* %16, i32 %17, i32 %18, i32* @netlink_proto, i32 %19)
  store %struct.sock* %20, %struct.sock** %12, align 8
  %21 = load %struct.sock*, %struct.sock** %12, align 8
  %22 = icmp ne %struct.sock* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %70

26:                                               ; preds = %5
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = load %struct.sock*, %struct.sock** %12, align 8
  %29 = call i32 @sock_init_data(%struct.socket* %27, %struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %30)
  store %struct.netlink_sock* %31, %struct.netlink_sock** %13, align 8
  %32 = load %struct.mutex*, %struct.mutex** %9, align 8
  %33 = icmp ne %struct.mutex* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.mutex*, %struct.mutex** %9, align 8
  %36 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %37 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %36, i32 0, i32 1
  store %struct.mutex* %35, %struct.mutex** %37, align 8
  br label %60

38:                                               ; preds = %26
  %39 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %40 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %39, i32 0, i32 2
  %41 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %42 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %41, i32 0, i32 1
  store %struct.mutex* %40, %struct.mutex** %42, align 8
  %43 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %44 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %43, i32 0, i32 1
  %45 = load %struct.mutex*, %struct.mutex** %44, align 8
  %46 = call i32 @mutex_init(%struct.mutex* %45)
  %47 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %48 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %47, i32 0, i32 1
  %49 = load %struct.mutex*, %struct.mutex** %48, align 8
  %50 = load i64, i64* @nlk_cb_mutex_keys, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32*, i32** @nlk_cb_mutex_key_strings, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lockdep_set_class_and_name(%struct.mutex* %49, i64 %53, i32 %58)
  br label %60

60:                                               ; preds = %38, %34
  %61 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %62 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %61, i32 0, i32 0
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load i32, i32* @netlink_sock_destruct, align 4
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.sock*, %struct.sock** %12, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %60, %23
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @mutex_init(%struct.mutex*) #1

declare dso_local i32 @lockdep_set_class_and_name(%struct.mutex*, i64, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
