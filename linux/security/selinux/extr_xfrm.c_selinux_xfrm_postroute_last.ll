; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_postroute_last.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_postroute_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SENDTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_postroute_last(i32 %0, %struct.sk_buff* %1, %struct.common_audit_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.common_audit_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.xfrm_state*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.common_audit_data* %2, %struct.common_audit_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %15 [
    i32 130, label %14
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %49

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %17)
  store %struct.dst_entry* %18, %struct.dst_entry** %10, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %20 = icmp ne %struct.dst_entry* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %22, %struct.dst_entry** %11, align 8
  br label %23

23:                                               ; preds = %38, %21
  %24 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %28, align 8
  store %struct.xfrm_state* %29, %struct.xfrm_state** %12, align 8
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %31 = icmp ne %struct.xfrm_state* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %34 = call i64 @selinux_authorizable_xfrm(%struct.xfrm_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %49

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %40 = call %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry* %39)
  store %struct.dst_entry* %40, %struct.dst_entry** %11, align 8
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SECINITSID_UNLABELED, align 4
  %45 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %46 = load i32, i32* @ASSOCIATION__SENDTO, align 4
  %47 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %48 = call i32 @avc_has_perm(i32* @selinux_state, i32 %43, i32 %44, i32 %45, i32 %46, %struct.common_audit_data* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %36, %14
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
