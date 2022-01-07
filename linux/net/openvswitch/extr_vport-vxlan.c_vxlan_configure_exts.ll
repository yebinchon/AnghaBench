; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_configure_exts.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_configure_exts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.nlattr = type { i32 }
%struct.vxlan_config = type { i32 }

@OVS_VXLAN_EXT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@exts_policy = common dso_local global i32 0, align 4
@OVS_VXLAN_EXT_GBP = common dso_local global i64 0, align 8
@VXLAN_F_GBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.nlattr*, %struct.vxlan_config*)* @vxlan_configure_exts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_configure_exts(%struct.vport* %0, %struct.nlattr* %1, %struct.vxlan_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vport*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.vxlan_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.vxlan_config* %2, %struct.vxlan_config** %7, align 8
  %12 = load i32, i32* @OVS_VXLAN_EXT_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = call i32 @nla_len(%struct.nlattr* %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load i32, i32* @OVS_VXLAN_EXT_MAX, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %27 = load i32, i32* @exts_policy, align 4
  %28 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %25, %struct.nlattr* %26, i32 %27, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i64, i64* @OVS_VXLAN_EXT_GBP, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @VXLAN_F_GBP, align 4
  %40 = load %struct.vxlan_config*, %struct.vxlan_config** %7, align 8
  %41 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %31, %21
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
