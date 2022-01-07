; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_sock_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_sock_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i32 }

@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__RECVFROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_sock_rcv_skb(i32 %0, %struct.sk_buff* %1, %struct.common_audit_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.common_audit_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca %struct.xfrm_sec_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.common_audit_data* %2, %struct.common_audit_data** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %12)
  store %struct.sec_path* %13, %struct.sec_path** %8, align 8
  %14 = load i32, i32* @SECINITSID_UNLABELED, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %16 = icmp ne %struct.sec_path* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %21 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %26 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %25, i32 0, i32 1
  %27 = load %struct.xfrm_state**, %struct.xfrm_state*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %27, i64 %29
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %30, align 8
  store %struct.xfrm_state* %31, %struct.xfrm_state** %10, align 8
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %33 = icmp ne %struct.xfrm_state* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %36 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 0
  %41 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %40, align 8
  store %struct.xfrm_sec_ctx* %41, %struct.xfrm_sec_ctx** %11, align 8
  %42 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %49

45:                                               ; preds = %34, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %18

49:                                               ; preds = %38, %18
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %54 = load i32, i32* @ASSOCIATION__RECVFROM, align 4
  %55 = load %struct.common_audit_data*, %struct.common_audit_data** %6, align 8
  %56 = call i32 @avc_has_perm(i32* @selinux_state, i32 %51, i32 %52, i32 %53, i32 %54, %struct.common_audit_data* %55)
  ret i32 %56
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
