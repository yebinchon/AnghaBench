; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.__ip6_tnl_parm = type { i32, i32, i8*, i32 }

@IFLA_GRE_ERSPAN_VER = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_INDEX = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_DIR = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_HWID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.__ip6_tnl_parm*)* @ip6erspan_set_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6erspan_set_version(%struct.nlattr** %0, %struct.__ip6_tnl_parm* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.__ip6_tnl_parm*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.__ip6_tnl_parm* %1, %struct.__ip6_tnl_parm** %4, align 8
  %5 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %6 = icmp ne %struct.nlattr** %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %80

8:                                                ; preds = %2
  %9 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %10 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %12 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %18 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i8* @nla_get_u8(%struct.nlattr* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %24 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %16, %8
  %26 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %27 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %32 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %38 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_u32(%struct.nlattr* %40)
  %42 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %43 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %30
  br label %80

45:                                               ; preds = %25
  %46 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %47 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %52 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %58 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_get_u8(%struct.nlattr* %60)
  %62 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %63 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %66 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %72 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i32 @nla_get_u16(%struct.nlattr* %74)
  %76 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %77 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %64
  br label %79

79:                                               ; preds = %78, %45
  br label %80

80:                                               ; preds = %7, %79, %44
  ret void
}

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
