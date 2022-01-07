; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_build.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_nh_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mpls_route = type { i32 }
%struct.mpls_nh = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MPLS_NEIGH_TABLE_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32, %struct.nlattr*, %struct.nlattr*, i32, %struct.netlink_ext_ack*)* @mpls_nh_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_nh_build(%struct.net* %0, %struct.mpls_route* %1, %struct.mpls_nh* %2, i32 %3, %struct.nlattr* %4, %struct.nlattr* %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.mpls_route*, align 8
  %12 = alloca %struct.mpls_nh*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.mpls_route* %1, %struct.mpls_route** %11, align 8
  store %struct.mpls_nh* %2, %struct.mpls_nh** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.nlattr* %4, %struct.nlattr** %14, align 8
  store %struct.nlattr* %5, %struct.nlattr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %18, align 4
  %21 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %22 = icmp ne %struct.mpls_nh* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  br label %73

24:                                               ; preds = %8
  %25 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %31 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %30, i32 0, i32 3
  %32 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %33 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %36 = call i32 @nla_get_labels(%struct.nlattr* %28, i32 %29, i32* %31, i32 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %73

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %46 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %47 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %46, i32 0, i32 1
  %48 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %49 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %48, i32 0, i32 0
  %50 = load %struct.mpls_route*, %struct.mpls_route** %11, align 8
  %51 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %52 = call i32 @__mpls_nh_via(%struct.mpls_route* %50, %struct.mpls_nh* %51)
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %54 = call i32 @nla_get_via(%struct.nlattr* %45, i32* %47, i32* %49, i32 %52, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %73

58:                                               ; preds = %44
  br label %63

59:                                               ; preds = %41
  %60 = load i32, i32* @MPLS_NEIGH_TABLE_UNSPEC, align 4
  %61 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %62 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.net*, %struct.net** %10, align 8
  %65 = load %struct.mpls_route*, %struct.mpls_route** %11, align 8
  %66 = load %struct.mpls_nh*, %struct.mpls_nh** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @mpls_nh_assign_dev(%struct.net* %64, %struct.mpls_route* %65, %struct.mpls_nh* %66, i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %75

73:                                               ; preds = %71, %57, %39, %23
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @nla_get_labels(%struct.nlattr*, i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_via(%struct.nlattr*, i32*, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__mpls_nh_via(%struct.mpls_route*, %struct.mpls_nh*) #1

declare dso_local i32 @mpls_nh_assign_dev(%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
