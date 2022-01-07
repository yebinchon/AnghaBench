; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_handle_privileged_root.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_handle_privileged_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, %struct.cred* }
%struct.cred = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*, i32, i32*, i32)* @handle_privileged_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_privileged_root(%struct.linux_binprm* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.cred*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %11, %struct.cred** %9, align 8
  %12 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %13 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %12, i32 0, i32 1
  %14 = load %struct.cred*, %struct.cred** %13, align 8
  store %struct.cred* %14, %struct.cred** %10, align 8
  %15 = call i32 (...) @root_privileged()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %58

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.cred*, %struct.cred** %10, align 8
  %24 = call i64 @__is_suid(i32 %22, %struct.cred* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %28 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @warn_setuid_and_fcaps_mixed(i32 %29)
  br label %58

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.cred*, %struct.cred** %10, align 8
  %34 = call i64 @__is_eff(i32 %32, %struct.cred* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.cred*, %struct.cred** %10, align 8
  %39 = call i64 @__is_real(i32 %37, %struct.cred* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %31
  %42 = load %struct.cred*, %struct.cred** %9, align 8
  %43 = getelementptr inbounds %struct.cred, %struct.cred* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cred*, %struct.cred** %9, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cap_combine(i32 %44, i32 %47)
  %49 = load %struct.cred*, %struct.cred** %10, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.cred*, %struct.cred** %10, align 8
  %54 = call i64 @__is_eff(i32 %52, %struct.cred* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %17, %26, %56, %51
  ret void
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @root_privileged(...) #1

declare dso_local i64 @__is_suid(i32, %struct.cred*) #1

declare dso_local i32 @warn_setuid_and_fcaps_mixed(i32) #1

declare dso_local i64 @__is_eff(i32, %struct.cred*) #1

declare dso_local i64 @__is_real(i32, %struct.cred*) #1

declare dso_local i32 @cap_combine(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
