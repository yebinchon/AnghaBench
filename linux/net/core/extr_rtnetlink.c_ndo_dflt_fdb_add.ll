; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: FDB only supports static addresses\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: vlans aren't supported yet for dev_uc|mc_add()\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndo_dflt_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndmsg*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %8, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %18 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %23 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NUD_PERMANENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %77

34:                                               ; preds = %21, %6
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %77

43:                                               ; preds = %34
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @is_unicast_ether_addr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @is_link_local_ether_addr(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @dev_uc_add_excl(%struct.net_device* %52, i8* %53)
  store i32 %54, i32* %14, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @is_multicast_ether_addr(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @dev_mc_add_excl(%struct.net_device* %60, i8* %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @NLM_F_EXCL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %69, %64
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %37, %28
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i64 @is_link_local_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_add_excl(%struct.net_device*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_add_excl(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
