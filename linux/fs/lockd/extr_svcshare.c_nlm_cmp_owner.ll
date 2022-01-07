; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcshare.c_nlm_cmp_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcshare.c_nlm_cmp_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_share = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.xdr_netobj = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_share*, %struct.xdr_netobj*)* @nlm_cmp_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_cmp_owner(%struct.nlm_share* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca %struct.nlm_share*, align 8
  %4 = alloca %struct.xdr_netobj*, align 8
  store %struct.nlm_share* %0, %struct.nlm_share** %3, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %4, align 8
  %5 = load %struct.nlm_share*, %struct.nlm_share** %3, align 8
  %6 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %10 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.nlm_share*, %struct.nlm_share** %3, align 8
  %15 = getelementptr inbounds %struct.nlm_share, %struct.nlm_share* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %22 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memcmp(i32 %17, i32 %20, i64 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %13, %2
  %28 = phi i1 [ false, %2 ], [ %26, %13 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
