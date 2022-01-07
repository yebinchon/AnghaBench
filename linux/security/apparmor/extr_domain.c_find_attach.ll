; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_find_attach.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_find_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.aa_ns = type { i32 }
%struct.list_head = type { i32 }
%struct.aa_profile = type { %struct.aa_label }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.linux_binprm*, %struct.aa_ns*, %struct.list_head*, i8*, i8**)* @find_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @find_attach(%struct.linux_binprm* %0, %struct.aa_ns* %1, %struct.list_head* %2, i8* %3, i8** %4) #0 {
  %6 = alloca %struct.linux_binprm*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.aa_profile*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %6, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %6, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @__attach_match(%struct.linux_binprm* %13, i8* %14, %struct.list_head* %15, i8** %16)
  %18 = call %struct.aa_profile* @aa_get_profile(i32 %17)
  store %struct.aa_profile* %18, %struct.aa_profile** %11, align 8
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %21 = icmp ne %struct.aa_profile* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %24 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %23, i32 0, i32 0
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi %struct.aa_label* [ %24, %22 ], [ null, %25 ]
  ret %struct.aa_label* %27
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_profile* @aa_get_profile(i32) #1

declare dso_local i32 @__attach_match(%struct.linux_binprm*, i8*, %struct.list_head*, i8**) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
