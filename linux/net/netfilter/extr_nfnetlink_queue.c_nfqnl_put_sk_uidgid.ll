; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_put_sk_uidgid.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_put_sk_uidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cred* }
%struct.cred = type { i32, i32 }

@NFQA_UID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@NFQA_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sock*)* @nfqnl_put_sk_uidgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_put_sk_uidgid(%struct.sk_buff* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.cred*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %5, align 8
  %8 = call i32 @sk_fullsock(%struct.sock* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = call i32 @read_lock_bh(i32* %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %11
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %19
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.cred*, %struct.cred** %32, align 8
  store %struct.cred* %33, %struct.cred** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @NFQA_UID, align 4
  %36 = load %struct.cred*, %struct.cred** %6, align 8
  %37 = getelementptr inbounds %struct.cred, %struct.cred* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %38)
  %40 = call i32 @htonl(i32 %39)
  %41 = call i64 @nla_put_be32(%struct.sk_buff* %34, i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %60

44:                                               ; preds = %26
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @NFQA_GID, align 4
  %47 = load %struct.cred*, %struct.cred** %6, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %49)
  %51 = call i32 @htonl(i32 %50)
  %52 = call i64 @nla_put_be32(%struct.sk_buff* %45, i32 %46, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %19, %11
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = call i32 @read_unlock_bh(i32* %58)
  store i32 0, i32* %3, align 4
  br label %64

60:                                               ; preds = %54, %43
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = call i32 @read_unlock_bh(i32* %62)
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %56, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
