; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_em_meta_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_em_meta_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.tcf_meta_hdr = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.meta_match = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@TCA_EM_META_MAX = common dso_local global i32 0, align 4
@meta_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_EM_META_HDR = common dso_local global i64 0, align 8
@TCF_META_TYPE_MAX = common dso_local global i64 0, align 8
@TCF_META_ID_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_EM_META_LVALUE = common dso_local global i64 0, align 8
@TCA_EM_META_RVALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_meta_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_meta_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcf_ematch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcf_meta_hdr*, align 8
  %13 = alloca %struct.meta_match*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %8, align 8
  %14 = load i32, i32* @TCA_EM_META_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store %struct.meta_match* null, %struct.meta_match** %13, align 8
  %19 = load i32, i32* @TCA_EM_META_MAX, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @meta_policy, align 4
  %23 = call i32 @nla_parse_deprecated(%struct.nlattr** %18, i32 %19, i8* %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %133

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* @TCA_EM_META_HDR, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp eq %struct.nlattr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %133

35:                                               ; preds = %27
  %36 = load i64, i64* @TCA_EM_META_HDR, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call %struct.tcf_meta_hdr* @nla_data(%struct.nlattr* %38)
  store %struct.tcf_meta_hdr* %39, %struct.tcf_meta_hdr** %12, align 8
  %40 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %41 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @TCF_META_TYPE(i32 %43)
  %45 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %46 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @TCF_META_TYPE(i32 %48)
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %35
  %52 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @TCF_META_TYPE(i32 %55)
  %57 = load i64, i64* @TCF_META_TYPE_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %51
  %60 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %61 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @TCF_META_ID(i32 %63)
  %65 = load i64, i64* @TCF_META_ID_MAX, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %69 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @TCF_META_ID(i32 %71)
  %73 = load i64, i64* @TCF_META_ID_MAX, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67, %59, %51, %35
  br label %133

76:                                               ; preds = %67
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.meta_match* @kzalloc(i32 8, i32 %77)
  store %struct.meta_match* %78, %struct.meta_match** %13, align 8
  %79 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %80 = icmp eq %struct.meta_match* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %133

84:                                               ; preds = %76
  %85 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %86 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %89 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %88, i32 0, i32 1
  %90 = call i32 @memcpy(i32* %87, %struct.TYPE_5__* %89, i32 4)
  %91 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %92 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.tcf_meta_hdr*, %struct.tcf_meta_hdr** %12, align 8
  %95 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %94, i32 0, i32 0
  %96 = call i32 @memcpy(i32* %93, %struct.TYPE_5__* %95, i32 4)
  %97 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %98 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %97, i32 0, i32 1
  %99 = call i32 @meta_is_supported(%struct.TYPE_4__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %103 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %102, i32 0, i32 0
  %104 = call i32 @meta_is_supported(%struct.TYPE_4__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101, %84
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  br label %133

109:                                              ; preds = %101
  %110 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %111 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %110, i32 0, i32 1
  %112 = load i64, i64* @TCA_EM_META_LVALUE, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i64 @meta_change_data(%struct.TYPE_4__* %111, %struct.nlattr* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %119 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %118, i32 0, i32 0
  %120 = load i64, i64* @TCA_EM_META_RVALUE, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i64 @meta_change_data(%struct.TYPE_4__* %119, %struct.nlattr* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117, %109
  br label %133

126:                                              ; preds = %117
  %127 = load %struct.tcf_ematch*, %struct.tcf_ematch** %8, align 8
  %128 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %127, i32 0, i32 0
  store i32 8, i32* %128, align 8
  %129 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %130 = ptrtoint %struct.meta_match* %129 to i64
  %131 = load %struct.tcf_ematch*, %struct.tcf_ematch** %8, align 8
  %132 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %126, %125, %106, %81, %75, %34, %26
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %138 = icmp ne %struct.meta_match* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.meta_match*, %struct.meta_match** %13, align 8
  %141 = call i32 @meta_delete(%struct.meta_match* %140)
  br label %142

142:                                              ; preds = %139, %136, %133
  %143 = load i32, i32* %9, align 4
  %144 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %144)
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #2

declare dso_local %struct.tcf_meta_hdr* @nla_data(%struct.nlattr*) #2

declare dso_local i64 @TCF_META_TYPE(i32) #2

declare dso_local i64 @TCF_META_ID(i32) #2

declare dso_local %struct.meta_match* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @meta_is_supported(%struct.TYPE_4__*) #2

declare dso_local i64 @meta_change_data(%struct.TYPE_4__*, %struct.nlattr*) #2

declare dso_local i32 @meta_delete(%struct.meta_match*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
