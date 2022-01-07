; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: FDB only supports static addresses\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndo_dflt_fdb_del(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndmsg*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %16 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NUD_PERMANENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %50

27:                                               ; preds = %5
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @is_unicast_ether_addr(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @is_link_local_ether_addr(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @dev_uc_del(%struct.net_device* %36, i8* %37)
  store i32 %38, i32* %12, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @is_multicast_ether_addr(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @dev_mc_del(%struct.net_device* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %21
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i64 @is_link_local_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
