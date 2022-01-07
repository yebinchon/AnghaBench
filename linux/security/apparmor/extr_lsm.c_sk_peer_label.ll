; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_sk_peer_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_sk_peer_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.sock = type { i32 }
%struct.aa_sk_ctx = type { %struct.aa_label* }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.sock*)* @sk_peer_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @sk_peer_label(%struct.sock* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.aa_sk_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.aa_sk_ctx* @SK_CTX(%struct.sock* %5)
  store %struct.aa_sk_ctx* %6, %struct.aa_sk_ctx** %4, align 8
  %7 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %7, i32 0, i32 0
  %9 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %10 = icmp ne %struct.aa_label* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %12, i32 0, i32 0
  %14 = load %struct.aa_label*, %struct.aa_label** %13, align 8
  store %struct.aa_label* %14, %struct.aa_label** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOPROTOOPT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.aa_label* @ERR_PTR(i32 %17)
  store %struct.aa_label* %18, %struct.aa_label** %2, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  ret %struct.aa_label* %20
}

declare dso_local %struct.aa_sk_ctx* @SK_CTX(%struct.sock*) #1

declare dso_local %struct.aa_label* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
