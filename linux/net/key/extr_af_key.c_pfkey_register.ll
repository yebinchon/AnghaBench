; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32 }
%struct.pfkey_sock = type { i32 }

@SADB_SATYPE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SADB_SATYPE_UNSPEC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BROADCAST_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_register(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %12)
  store %struct.pfkey_sock* %13, %struct.pfkey_sock** %10, align 8
  %14 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %15 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SADB_SATYPE_MAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %84

22:                                               ; preds = %4
  %23 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %24 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SADB_SATYPE_UNSPEC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %30 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %33 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %84

41:                                               ; preds = %28
  %42 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %43 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %47 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %22
  %51 = call i32 (...) @xfrm_probe_algs()
  %52 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.sk_buff* @compose_sadb_supported(%struct.sadb_msg* %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %11, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %50
  %58 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %59 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SADB_SATYPE_UNSPEC, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %65 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %70 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i32, i32* @ENOBUFS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %50
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i32, i32* @BROADCAST_REGISTERED, align 4
  %80 = load %struct.sock*, %struct.sock** %6, align 8
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = call i32 @sock_net(%struct.sock* %81)
  %83 = call i32 @pfkey_broadcast(%struct.sk_buff* %77, i32 %78, i32 %79, %struct.sock* %80, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %76, %73, %38, %19
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @xfrm_probe_algs(...) #1

declare dso_local %struct.sk_buff* @compose_sadb_supported(%struct.sadb_msg*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
