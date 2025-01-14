; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_has_cap_mac_admin.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_has_cap_mac_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@CAP_OPT_NONE = common dso_local global i32 0, align 4
@CAP_OPT_NOAUDIT = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @has_cap_mac_admin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_cap_mac_admin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %6, %struct.cred** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @CAP_OPT_NONE, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CAP_OPT_NOAUDIT, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cred*, %struct.cred** %4, align 8
  %16 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @cap_capable(%struct.cred* %15, i32* @init_user_ns, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @cred_has_capability(%struct.cred* %22, i32 %23, i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @cap_capable(%struct.cred*, i32*, i32, i32) #1

declare dso_local i64 @cred_has_capability(%struct.cred*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
