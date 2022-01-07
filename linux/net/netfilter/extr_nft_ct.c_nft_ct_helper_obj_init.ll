; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_ct.c_nft_ct_helper_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_ct_helper_obj = type { %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper*, i32 }
%struct.nf_conntrack_helper = type { i32 }

@NF_CT_HELPER_NAME_LEN = common dso_local global i32 0, align 4
@NFTA_CT_HELPER_NAME = common dso_local global i64 0, align 8
@NFTA_CT_HELPER_L4PROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFTA_CT_HELPER_L3PROTO = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr**, %struct.nft_object*)* @nft_ct_helper_obj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ct_helper_obj_init(%struct.nft_ctx* %0, %struct.nlattr** %1, %struct.nft_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_object*, align 8
  %8 = alloca %struct.nft_ct_helper_obj*, align 8
  %9 = alloca %struct.nf_conntrack_helper*, align 8
  %10 = alloca %struct.nf_conntrack_helper*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nft_object* %2, %struct.nft_object** %7, align 8
  %16 = load %struct.nft_object*, %struct.nft_object** %7, align 8
  %17 = call %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object* %16)
  store %struct.nft_ct_helper_obj* %17, %struct.nft_ct_helper_obj** %8, align 8
  %18 = load i32, i32* @NF_CT_HELPER_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %26 = load i64, i64* @NFTA_CT_HELPER_NAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %32 = load i64, i64* @NFTA_CT_HELPER_L4PROTO, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

39:                                               ; preds = %30
  %40 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %41 = load i64, i64* @NFTA_CT_HELPER_L4PROTO, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_u8(%struct.nlattr* %43)
  %45 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %46 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %48 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

54:                                               ; preds = %39
  %55 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %56 = load i64, i64* @NFTA_CT_HELPER_NAME, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = trunc i64 %19 to i32
  %60 = call i32 @nla_strlcpy(i8* %21, %struct.nlattr* %58, i32 %59)
  %61 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %62 = load i64, i64* @NFTA_CT_HELPER_L3PROTO, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %68 = load i64, i64* @NFTA_CT_HELPER_L3PROTO, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @nla_get_be16(%struct.nlattr* %70)
  %72 = call i32 @ntohs(i32 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %66, %54
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %9, align 8
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %10, align 8
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %112 [
    i32 130, label %75
    i32 129, label %89
    i32 128, label %103
    i32 132, label %103
    i32 131, label %103
  ]

75:                                               ; preds = %73
  %76 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

83:                                               ; preds = %75
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %86 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %21, i32 %84, i32 %87)
  store %struct.nf_conntrack_helper* %88, %struct.nf_conntrack_helper** %9, align 8
  br label %115

89:                                               ; preds = %73
  %90 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 130
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

97:                                               ; preds = %89
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %100 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %21, i32 %98, i32 %101)
  store %struct.nf_conntrack_helper* %102, %struct.nf_conntrack_helper** %10, align 8
  br label %115

103:                                              ; preds = %73, %73, %73
  %104 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %105 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %21, i32 130, i32 %106)
  store %struct.nf_conntrack_helper* %107, %struct.nf_conntrack_helper** %9, align 8
  %108 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %109 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %21, i32 129, i32 %110)
  store %struct.nf_conntrack_helper* %111, %struct.nf_conntrack_helper** %10, align 8
  br label %115

112:                                              ; preds = %73
  %113 = load i32, i32* @EAFNOSUPPORT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

115:                                              ; preds = %103, %97, %83
  %116 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %117 = icmp ne %struct.nf_conntrack_helper* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %10, align 8
  %120 = icmp ne %struct.nf_conntrack_helper* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @ENOENT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

124:                                              ; preds = %118, %115
  %125 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %9, align 8
  %126 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %127 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %126, i32 0, i32 1
  store %struct.nf_conntrack_helper* %125, %struct.nf_conntrack_helper** %127, align 8
  %128 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %10, align 8
  %129 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %130 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %129, i32 0, i32 0
  store %struct.nf_conntrack_helper* %128, %struct.nf_conntrack_helper** %130, align 8
  %131 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %132 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @nf_ct_netns_get(i32 %133, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %142

141:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

142:                                              ; preds = %140
  %143 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %144 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %143, i32 0, i32 1
  %145 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %144, align 8
  %146 = icmp ne %struct.nf_conntrack_helper* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %149 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %148, i32 0, i32 1
  %150 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %149, align 8
  %151 = call i32 @nf_conntrack_helper_put(%struct.nf_conntrack_helper* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %154 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %153, i32 0, i32 0
  %155 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %154, align 8
  %156 = icmp ne %struct.nf_conntrack_helper* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.nft_ct_helper_obj*, %struct.nft_ct_helper_obj** %8, align 8
  %159 = getelementptr inbounds %struct.nft_ct_helper_obj, %struct.nft_ct_helper_obj* %158, i32 0, i32 0
  %160 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %159, align 8
  %161 = call i32 @nf_conntrack_helper_put(%struct.nf_conntrack_helper* %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

164:                                              ; preds = %162, %141, %121, %112, %94, %80, %51, %36
  %165 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.nft_ct_helper_obj* @nft_obj_data(%struct.nft_object*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8*, i32, i32) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @nf_conntrack_helper_put(%struct.nf_conntrack_helper*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
