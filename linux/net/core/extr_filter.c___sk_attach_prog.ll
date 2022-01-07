; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___sk_attach_prog.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___sk_attach_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.sock = type { i32 }
%struct.sk_filter = type { i32, %struct.bpf_prog* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*, %struct.sock*)* @__sk_attach_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sk_attach_prog(%struct.bpf_prog* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_filter*, align 8
  %7 = alloca %struct.sk_filter*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sk_filter* @kmalloc(i32 16, i32 %8)
  store %struct.sk_filter* %9, %struct.sk_filter** %6, align 8
  %10 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %11 = icmp ne %struct.sk_filter* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %17 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %18 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %17, i32 0, i32 1
  store %struct.bpf_prog* %16, %struct.bpf_prog** %18, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %21 = call i32 @__sk_filter_charge(%struct.sock* %19, %struct.sk_filter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %25 = call i32 @kfree(%struct.sk_filter* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %15
  %29 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %30 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %29, i32 0, i32 0
  %31 = call i32 @refcount_set(i32* %30, i32 1)
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @lockdep_sock_is_held(%struct.sock* %35)
  %37 = call %struct.sk_filter* @rcu_dereference_protected(i32 %34, i32 %36)
  store %struct.sk_filter* %37, %struct.sk_filter** %7, align 8
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %42 = call i32 @rcu_assign_pointer(i32 %40, %struct.sk_filter* %41)
  %43 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %44 = icmp ne %struct.sk_filter* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %48 = call i32 @sk_filter_uncharge(%struct.sock* %46, %struct.sk_filter* %47)
  br label %49

49:                                               ; preds = %45, %28
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %23, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.sk_filter* @kmalloc(i32, i32) #1

declare dso_local i32 @__sk_filter_charge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i32 @kfree(%struct.sk_filter*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.sk_filter* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sk_filter*) #1

declare dso_local i32 @sk_filter_uncharge(%struct.sock*, %struct.sk_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
