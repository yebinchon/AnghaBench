; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c___nf_ip6_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c___nf_ip6_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_pinfo = type { i32 }
%struct.inet_sock = type { %struct.ipv6_pinfo*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__nf_ip6_route.fake_pinfo = internal constant %struct.ipv6_pinfo zeroinitializer, align 4
@__nf_ip6_route.fake_sk = internal constant %struct.inet_sock { %struct.ipv6_pinfo* @__nf_ip6_route.fake_pinfo, %struct.TYPE_3__ { i32 1 } }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nf_ip6_route(%struct.net* %0, %struct.dst_entry** %1, %struct.flowi* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.dst_entry**, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.dst_entry** %1, %struct.dst_entry*** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, %struct.inet_sock* @__nf_ip6_route.fake_sk, %struct.inet_sock* null
  %16 = bitcast %struct.inet_sock* %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.flowi*, %struct.flowi** %7, align 8
  %20 = getelementptr inbounds %struct.flowi, %struct.flowi* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call %struct.dst_entry* @ip6_route_output(%struct.net* %17, i8* %18, i32* %21)
  store %struct.dst_entry* %22, %struct.dst_entry** %10, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %30 = call i32 @dst_release(%struct.dst_entry* %29)
  br label %34

31:                                               ; preds = %4
  %32 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %33 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  store %struct.dst_entry* %32, %struct.dst_entry** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i8*, i32*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
