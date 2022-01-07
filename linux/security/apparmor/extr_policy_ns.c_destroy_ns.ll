; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_destroy_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c_destroy_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, %struct.TYPE_3__, %struct.aa_ns*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_ns*)* @destroy_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ns(%struct.aa_ns* %0) #0 {
  %2 = alloca %struct.aa_ns*, align 8
  %3 = alloca i64, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %2, align 8
  %4 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %5 = icmp ne %struct.aa_ns* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %49

7:                                                ; preds = %1
  %8 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %9 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %8, i32 0, i32 0
  %10 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %11 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mutex_lock_nested(i32* %9, i32 %12)
  %14 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %15 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @__aa_profile_list_release(i32* %16)
  %18 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %19 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %18, i32 0, i32 3
  %20 = call i32 @__ns_list_release(i32* %19)
  %21 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %22 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %21, i32 0, i32 2
  %23 = load %struct.aa_ns*, %struct.aa_ns** %22, align 8
  %24 = icmp ne %struct.aa_ns* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %7
  %26 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %27 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @write_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %32 = call i32 @ns_unconfined(%struct.aa_ns* %31)
  %33 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %34 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %33, i32 0, i32 2
  %35 = load %struct.aa_ns*, %struct.aa_ns** %34, align 8
  %36 = call i32 @ns_unconfined(%struct.aa_ns* %35)
  %37 = call i32 @__aa_proxy_redirect(i32 %32, i32 %36)
  %38 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %39 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @write_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %25, %7
  %44 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %45 = call i32 @__aafs_ns_rmdir(%struct.aa_ns* %44)
  %46 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %47 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %43, %6
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @__aa_profile_list_release(i32*) #1

declare dso_local i32 @__ns_list_release(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__aa_proxy_redirect(i32, i32) #1

declare dso_local i32 @ns_unconfined(%struct.aa_ns*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__aafs_ns_rmdir(%struct.aa_ns*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
