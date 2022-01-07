; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_erspan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_GRE_OFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_IFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_COLLECT_METADATA = common dso_local global i64 0, align 8
@GRE_SEQ = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i64 0, align 8
@ID_MASK = common dso_local global i32 0, align 4
@IFLA_GRE_OKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @erspan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erspan_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = icmp ne %struct.nlattr** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @ipgre_tap_validate(%struct.nlattr** %14, %struct.nlattr** %15, %struct.netlink_ext_ack* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %106

22:                                               ; preds = %13
  %23 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %24 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_be16(%struct.nlattr* %32)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %44 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_get_be16(%struct.nlattr* %46)
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %52 = load i64, i64* @IFLA_GRE_COLLECT_METADATA, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GRE_SEQ, align 4
  %59 = load i32, i32* @GRE_KEY, align 4
  %60 = or i32 %58, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %106

65:                                               ; preds = %56, %50
  %66 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %67 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %73 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_be32(%struct.nlattr* %75)
  %77 = call i32 @ntohl(i32 %76)
  %78 = load i32, i32* @ID_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %106

85:                                               ; preds = %71, %65
  %86 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %87 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %93 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @nla_get_be32(%struct.nlattr* %95)
  %97 = call i32 @ntohl(i32 %96)
  %98 = load i32, i32* @ID_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %91, %85
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %102, %82, %62, %20, %12
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ipgre_tap_validate(%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
