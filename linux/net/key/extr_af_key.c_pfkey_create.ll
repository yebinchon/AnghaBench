; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.netns_pfkey = type { i32 }
%struct.sock = type { i32, i32 }
%struct.pfkey_sock = type { i32 }

@pfkey_net_id = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@key_proto = common dso_local global i32 0, align 4
@pfkey_ops = common dso_local global i32 0, align 4
@pfkey_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @pfkey_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netns_pfkey*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.pfkey_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load i32, i32* @pfkey_net_id, align 4
  %16 = call %struct.netns_pfkey* @net_generic(%struct.net* %14, i32 %15)
  store %struct.netns_pfkey* %16, %struct.netns_pfkey** %10, align 8
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @ns_capable(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %77

26:                                               ; preds = %4
  %27 = load %struct.socket*, %struct.socket** %7, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SOCK_RAW, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %77

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PF_KEY_V2, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EPROTONOSUPPORT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %77

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load i32, i32* @PF_KEY, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.sock* @sk_alloc(%struct.net* %45, i32 %46, i32 %47, i32* @key_proto, i32 %48)
  store %struct.sock* %49, %struct.sock** %11, align 8
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = icmp eq %struct.sock* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %75

53:                                               ; preds = %42
  %54 = load %struct.sock*, %struct.sock** %11, align 8
  %55 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %54)
  store %struct.pfkey_sock* %55, %struct.pfkey_sock** %12, align 8
  %56 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %57 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %56, i32 0, i32 0
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.socket*, %struct.socket** %7, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  store i32* @pfkey_ops, i32** %60, align 8
  %61 = load %struct.socket*, %struct.socket** %7, align 8
  %62 = load %struct.sock*, %struct.sock** %11, align 8
  %63 = call i32 @sock_init_data(%struct.socket* %61, %struct.sock* %62)
  %64 = load i32, i32* @PF_KEY, align 4
  %65 = load %struct.sock*, %struct.sock** %11, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @pfkey_sock_destruct, align 4
  %68 = load %struct.sock*, %struct.sock** %11, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.netns_pfkey*, %struct.netns_pfkey** %10, align 8
  %71 = getelementptr inbounds %struct.netns_pfkey, %struct.netns_pfkey* %70, i32 0, i32 0
  %72 = call i32 @atomic_inc(i32* %71)
  %73 = load %struct.sock*, %struct.sock** %11, align 8
  %74 = call i32 @pfkey_insert(%struct.sock* %73)
  store i32 0, i32* %5, align 4
  br label %77

75:                                               ; preds = %52
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %53, %39, %32, %23
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.netns_pfkey* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pfkey_insert(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
