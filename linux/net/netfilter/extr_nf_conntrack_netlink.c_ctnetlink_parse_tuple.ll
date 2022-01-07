; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conntrack_zone = type { i32 }

@CTA_TUPLE_MAX = common dso_local global i32 0, align 4
@tuple_nla_policy = common dso_local global i32 0, align 4
@CTA_TUPLE_IP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTA_TUPLE_PROTO = common dso_local global i64 0, align 8
@CTA_TUPLE_ZONE = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, %struct.nf_conntrack_zone*)* @ctnetlink_parse_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple(%struct.nlattr** %0, %struct.nf_conntrack_tuple* %1, i64 %2, i32 %3, %struct.nf_conntrack_zone* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conntrack_zone*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %7, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nf_conntrack_zone* %4, %struct.nf_conntrack_zone** %11, align 8
  %16 = load i32, i32* @CTA_TUPLE_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %22 = call i32 @memset(%struct.nf_conntrack_tuple* %21, i32 0, i32 8)
  %23 = load i32, i32* @CTA_TUPLE_MAX, align 4
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = load i32, i32* @tuple_nla_policy, align 4
  %29 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %23, %struct.nlattr* %27, i32 %28, i32* null)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

34:                                               ; preds = %5
  %35 = load i64, i64* @CTA_TUPLE_IP, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i64, i64* @CTA_TUPLE_IP, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %51 = call i32 @ctnetlink_parse_tuple_ip(%struct.nlattr* %49, %struct.nf_conntrack_tuple* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

56:                                               ; preds = %42
  %57 = load i64, i64* @CTA_TUPLE_PROTO, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

64:                                               ; preds = %56
  %65 = load i64, i64* @CTA_TUPLE_PROTO, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %69 = call i32 @ctnetlink_parse_tuple_proto(%struct.nlattr* %67, %struct.nf_conntrack_tuple* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

74:                                               ; preds = %64
  %75 = load i64, i64* @CTA_TUPLE_ZONE, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %11, align 8
  %81 = icmp ne %struct.nf_conntrack_zone* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

85:                                               ; preds = %79
  %86 = load i64, i64* @CTA_TUPLE_ZONE, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %11, align 8
  %91 = call i32 @ctnetlink_parse_tuple_zone(%struct.nlattr* %88, i64 %89, %struct.nf_conntrack_zone* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %103 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %104 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %108 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %109 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %101
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %94, %82, %72, %61, %54, %39, %32
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ctnetlink_parse_tuple_ip(%struct.nlattr*, %struct.nf_conntrack_tuple*) #2

declare dso_local i32 @ctnetlink_parse_tuple_proto(%struct.nlattr*, %struct.nf_conntrack_tuple*) #2

declare dso_local i32 @ctnetlink_parse_tuple_zone(%struct.nlattr*, i64, %struct.nf_conntrack_zone*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
