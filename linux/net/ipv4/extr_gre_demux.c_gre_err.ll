; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_gre_demux.c_gre_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_gre_demux.c_gre_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.gre_protocol = type { i32 (%struct.sk_buff*, i32)* }
%struct.iphdr = type { i32 }

@GREPROTO_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@gre_proto = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @gre_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gre_protocol*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.iphdr*
  store %struct.iphdr* %13, %struct.iphdr** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 2
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 127
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @GREPROTO_MAX, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %2
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load i32*, i32** @gre_proto, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.gre_protocol* @rcu_dereference(i32 %38)
  store %struct.gre_protocol* %39, %struct.gre_protocol** %6, align 8
  %40 = load %struct.gre_protocol*, %struct.gre_protocol** %6, align 8
  %41 = icmp ne %struct.gre_protocol* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.gre_protocol*, %struct.gre_protocol** %6, align 8
  %44 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %43, i32 0, i32 0
  %45 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.sk_buff*, i32)* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.gre_protocol*, %struct.gre_protocol** %6, align 8
  %49 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %48, i32 0, i32 0
  %50 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %50(%struct.sk_buff* %51, i32 %52)
  br label %57

54:                                               ; preds = %42, %33
  %55 = load i32, i32* @EPROTONOSUPPORT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %47
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %30
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gre_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
