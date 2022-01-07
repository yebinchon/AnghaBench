; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_byname.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_get_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_set = type { i32 }
%struct.ip_set_net = type { i64, i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_set_get_byname(%struct.net* %0, i8* %1, %struct.ip_set** %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ip_set**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ip_set*, align 8
  %10 = alloca %struct.ip_set_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ip_set** %2, %struct.ip_set*** %6, align 8
  %11 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %12)
  store %struct.ip_set_net* %13, %struct.ip_set_net** %10, align 8
  %14 = call i32 (...) @rcu_read_lock()
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %45, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.ip_set_net*, %struct.ip_set_net** %10, align 8
  %18 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.ip_set_net*, %struct.ip_set_net** %10, align 8
  %23 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.ip_set** @rcu_dereference(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %25, i64 %26
  %28 = load %struct.ip_set*, %struct.ip_set** %27, align 8
  store %struct.ip_set* %28, %struct.ip_set** %9, align 8
  %29 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %30 = icmp ne %struct.ip_set* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %33 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @STRNCMP(i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %40 = call i32 @__ip_set_get(%struct.ip_set* %39)
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.ip_set*, %struct.ip_set** %9, align 8
  %43 = load %struct.ip_set**, %struct.ip_set*** %6, align 8
  store %struct.ip_set* %42, %struct.ip_set** %43, align 8
  br label %48

44:                                               ; preds = %31, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %15

48:                                               ; preds = %38, %15
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load i64, i64* %8, align 8
  ret i64 %50
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_set** @rcu_dereference(i32) #1

declare dso_local i64 @STRNCMP(i32, i8*) #1

declare dso_local i32 @__ip_set_get(%struct.ip_set*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
