; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pfkey_sock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64, i64, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@SADB_DUMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32, i8*)* @dump_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_sa(%struct.xfrm_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pfkey_sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sadb_msg*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.pfkey_sock*
  store %struct.pfkey_sock* %12, %struct.pfkey_sock** %8, align 8
  %13 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %14 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %13, i32 0, i32 1
  %15 = call i32 @pfkey_can_dump(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %22 = call %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i64 @IS_ERR(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @PTR_ERR(%struct.sk_buff* %27)
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.sadb_msg*
  store %struct.sadb_msg* %33, %struct.sadb_msg** %10, align 8
  %34 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %35 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %39 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @SADB_DUMP, align 4
  %41 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %42 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pfkey_proto2satype(i32 %46)
  %48 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %49 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %51 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %53 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %57 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %59 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sadb_msg*, %struct.sadb_msg** %10, align 8
  %63 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %65 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %29
  %70 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %71 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = load i32, i32* @BROADCAST_ONE, align 4
  %76 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %77 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %76, i32 0, i32 1
  %78 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %79 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %78, i32 0, i32 1
  %80 = call i32 @sock_net(i32* %79)
  %81 = call i32 @pfkey_broadcast(%struct.sk_buff* %73, i32 %74, i32 %75, i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %69, %29
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load %struct.pfkey_sock*, %struct.pfkey_sock** %8, align 8
  %85 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store %struct.sk_buff* %83, %struct.sk_buff** %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %26, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @pfkey_can_dump(i32*) #1

declare dso_local %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_proto2satype(i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
