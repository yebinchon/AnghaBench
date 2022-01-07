; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_put_filterinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_put_filterinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock_fprog_kern = type { i32 }
%struct.sk_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock_fprog_kern* }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_diag_put_filterinfo(i32 %0, %struct.sock* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock_fprog_kern*, align 8
  %11 = alloca %struct.sk_filter*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %18, i32 %19, i32 0)
  store i32 0, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sk_filter* @rcu_dereference(i32 %25)
  store %struct.sk_filter* %26, %struct.sk_filter** %11, align 8
  %27 = load %struct.sk_filter*, %struct.sk_filter** %11, align 8
  %28 = icmp ne %struct.sk_filter* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %59

30:                                               ; preds = %21
  %31 = load %struct.sk_filter*, %struct.sk_filter** %11, align 8
  %32 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %34, align 8
  store %struct.sock_fprog_kern* %35, %struct.sock_fprog_kern** %10, align 8
  %36 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %10, align 8
  %37 = icmp ne %struct.sock_fprog_kern* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %59

39:                                               ; preds = %30
  %40 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %10, align 8
  %41 = call i32 @bpf_classic_proglen(%struct.sock_fprog_kern* %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %42, i32 %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %12, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %53 = call i32 @nla_data(%struct.nlattr* %52)
  %54 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %10, align 8
  %55 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %48, %38, %29
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @bpf_classic_proglen(%struct.sock_fprog_kern*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
