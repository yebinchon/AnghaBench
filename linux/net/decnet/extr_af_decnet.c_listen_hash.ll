; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_listen_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_listen_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.sockaddr_dn = type { i32, i32, i32* }

@dn_sk_hash = common dso_local global %struct.hlist_head* null, align 8
@DN_SK_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.sockaddr_dn*)* @listen_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @listen_hash(%struct.sockaddr_dn* %0) #0 {
  %2 = alloca %struct.sockaddr_dn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sockaddr_dn* %0, %struct.sockaddr_dn** %2, align 8
  %5 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %2, align 8
  %6 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %2, align 8
  %12 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %35, %10
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %2, align 8
  %17 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %2, align 8
  %23 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 3
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %14

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.hlist_head*, %struct.hlist_head** @dn_sk_hash, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @DN_SK_HASH_MASK, align 4
  %43 = and i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %40, i64 %44
  ret %struct.hlist_head* %45
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
