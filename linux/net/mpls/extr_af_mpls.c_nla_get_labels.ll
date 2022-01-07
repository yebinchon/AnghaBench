; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_nla_get_labels.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_nla_get_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mpls_shim_hdr = type { i32 }
%struct.mpls_entry_decoded = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Invalid length for labels attribute\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Too many labels\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TTL in label must be 0\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Traffic class in label must be 0\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"BOS bit must be set in first label\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"BOS bit can only be set in first label\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Implicit NULL Label (3) can not be used in encapsulation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_get_labels(%struct.nlattr* %0, i32 %1, i32* %2, i32* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpls_shim_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mpls_entry_decoded, align 8
  %18 = alloca %struct.mpls_entry_decoded, align 8
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %20 = call i32 @nla_len(%struct.nlattr* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = udiv i32 %25, 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %5
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %31 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %29, %struct.nlattr* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %126

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = udiv i32 %35, 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %42 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %126

45:                                               ; preds = %34
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %123

49:                                               ; preds = %45
  %50 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %51 = call %struct.mpls_shim_hdr* @nla_data(%struct.nlattr* %50)
  store %struct.mpls_shim_hdr* %51, %struct.mpls_shim_hdr** %13, align 8
  store i32 1, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %119, %49
  %55 = load i32, i32* %16, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %122

57:                                               ; preds = %54
  %58 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %13, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %58, i64 %60
  call void @mpls_entry_decode(%struct.mpls_entry_decoded* sret %18, %struct.mpls_shim_hdr* %61)
  %62 = bitcast %struct.mpls_entry_decoded* %17 to i8*
  %63 = bitcast %struct.mpls_entry_decoded* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  %64 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %17, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %70 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %68, %struct.nlattr* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %126

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %17, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %79 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %80 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %78, %struct.nlattr* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %126

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %91 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %89, %struct.nlattr* %90)
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %96 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %100

97:                                               ; preds = %88
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %99 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %126

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %17, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %112 [
    i32 128, label %106
  ]

106:                                              ; preds = %103
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %108 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %109 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %107, %struct.nlattr* %108, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %126

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %17, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %54

122:                                              ; preds = %54
  br label %123

123:                                              ; preds = %122, %48
  %124 = load i32, i32* %14, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %123, %106, %100, %77, %67, %40, %28
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mpls_shim_hdr* @nla_data(%struct.nlattr*) #1

declare dso_local void @mpls_entry_decode(%struct.mpls_entry_decoded* sret, %struct.mpls_shim_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
