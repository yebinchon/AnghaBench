; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_syslog.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECCLASS_SYSTEM = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_READ = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_CONSOLE = common dso_local global i32 0, align 4
@SYSTEM__SYSLOG_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @selinux_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_syslog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 129, label %5
    i32 128, label %5
    i32 131, label %11
    i32 130, label %11
    i32 132, label %11
  ]

5:                                                ; preds = %1, %1
  %6 = call i32 (...) @current_sid()
  %7 = load i32, i32* @SECINITSID_KERNEL, align 4
  %8 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %9 = load i32, i32* @SYSTEM__SYSLOG_READ, align 4
  %10 = call i32 @avc_has_perm(i32* @selinux_state, i32 %6, i32 %7, i32 %8, i32 %9, i32* null)
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1, %1, %1
  %12 = call i32 (...) @current_sid()
  %13 = load i32, i32* @SECINITSID_KERNEL, align 4
  %14 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %15 = load i32, i32* @SYSTEM__SYSLOG_CONSOLE, align 4
  %16 = call i32 @avc_has_perm(i32* @selinux_state, i32 %12, i32 %13, i32 %14, i32 %15, i32* null)
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = call i32 (...) @current_sid()
  %19 = load i32, i32* @SECINITSID_KERNEL, align 4
  %20 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %21 = load i32, i32* @SYSTEM__SYSLOG_MOD, align 4
  %22 = call i32 @avc_has_perm(i32* @selinux_state, i32 %18, i32 %19, i32 %20, i32 %21, i32* null)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %11, %5
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
