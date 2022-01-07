; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_free_nsproxy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_free_nsproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i32, i32, i64, i64, i64, i64 }

@nsproxy_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_nsproxy(%struct.nsproxy* %0) #0 {
  %2 = alloca %struct.nsproxy*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %2, align 8
  %3 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %4 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %9 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @put_mnt_ns(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %14 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %19 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @put_uts_ns(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %24 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %29 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @put_ipc_ns(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %34 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %39 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @put_pid_ns(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %44 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_cgroup_ns(i32 %45)
  %47 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %48 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @put_net(i32 %49)
  %51 = load i32, i32* @nsproxy_cachep, align 4
  %52 = load %struct.nsproxy*, %struct.nsproxy** %2, align 8
  %53 = call i32 @kmem_cache_free(i32 %51, %struct.nsproxy* %52)
  ret void
}

declare dso_local i32 @put_mnt_ns(i64) #1

declare dso_local i32 @put_uts_ns(i64) #1

declare dso_local i32 @put_ipc_ns(i64) #1

declare dso_local i32 @put_pid_ns(i64) #1

declare dso_local i32 @put_cgroup_ns(i32) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
