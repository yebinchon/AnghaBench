; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqa_parse_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqa_parse_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@NFQA_VLAN = common dso_local global i64 0, align 8
@NFQA_VLAN_MAX = common dso_local global i32 0, align 4
@nfqa_vlan_policy = common dso_local global i32 0, align 4
@NFQA_VLAN_TCI = common dso_local global i64 0, align 8
@NFQA_VLAN_PROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFQA_L2HDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_queue_entry*, %struct.nlattr**)* @nfqa_parse_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqa_parse_bridge(%struct.nf_queue_entry* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %12 = load i64, i64* @NFQA_VLAN, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load i32, i32* @NFQA_VLAN_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @NFQA_VLAN_MAX, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %24 = load i64, i64* @NFQA_VLAN, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = load i32, i32* @nfqa_vlan_policy, align 4
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %21, i32 %22, %struct.nlattr* %26, i32 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %60

33:                                               ; preds = %16
  %34 = load i64, i64* @NFQA_VLAN_TCI, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i64, i64* @NFQA_VLAN_PROTO, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %48 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @NFQA_VLAN_PROTO, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be16(%struct.nlattr* %52)
  %54 = load i64, i64* @NFQA_VLAN_TCI, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i32 @nla_get_be16(%struct.nlattr* %56)
  %58 = call i32 @ntohs(i32 %57)
  %59 = call i32 @__vlan_hwaccel_put_tag(%struct.TYPE_3__* %49, i32 %53, i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %46, %43, %31
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %112 [
    i32 0, label %63
    i32 1, label %110
  ]

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %66 = load i64, i64* @NFQA_L2HDR, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %109

70:                                               ; preds = %64
  %71 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %72 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %77 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %75, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %84 = load i64, i64* @NFQA_L2HDR, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_len(%struct.nlattr* %86)
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %70
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %110

92:                                               ; preds = %70
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %97 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = call i32 @skb_mac_header(%struct.TYPE_3__* %98)
  %100 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %101 = load i64, i64* @NFQA_L2HDR, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i32 @nla_data(%struct.nlattr* %103)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @memcpy(i32 %99, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %95, %92
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %64
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %89, %60
  %111 = load i32, i32* %3, align 4
  ret i32 %111

112:                                              ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @skb_mac_header(%struct.TYPE_3__*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
