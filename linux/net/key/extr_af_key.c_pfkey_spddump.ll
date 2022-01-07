; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spddump.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_spddump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.pfkey_sock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@pfkey_dump_sp = common dso_local global i32* null, align 8
@pfkey_dump_sp_done = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_spddump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_spddump(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %11)
  store %struct.pfkey_sock* %12, %struct.pfkey_sock** %10, align 8
  %13 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %14 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %17 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %23 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %4
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %29 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %32 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %35 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %38 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load i32*, i32** @pfkey_dump_sp, align 8
  %41 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %42 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32* %40, i32** %43, align 8
  %44 = load i32, i32* @pfkey_dump_sp_done, align 4
  %45 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %46 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %49 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  %53 = call i32 @xfrm_policy_walk_init(i32* %51, i32 %52)
  %54 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %55 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %58 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %27, %21
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xfrm_policy_walk_init(i32*, i32) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
