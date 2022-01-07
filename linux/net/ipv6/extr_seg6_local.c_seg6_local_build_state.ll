; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.seg6_local_lwt = type { %struct.lwtunnel_state*, i32, i32 }

@SEG6_LOCAL_MAX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@seg6_local_policy = common dso_local global i32 0, align 4
@SEG6_LOCAL_ACTION = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_SEG6_LOCAL = common dso_local global i32 0, align 4
@LWTUNNEL_STATE_INPUT_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* @seg6_local_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_local_build_state(%struct.nlattr* %0, i32 %1, i8* %2, %struct.lwtunnel_state** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lwtunnel_state**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lwtunnel_state*, align 8
  %15 = alloca %struct.seg6_local_lwt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.lwtunnel_state** %3, %struct.lwtunnel_state*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load i32, i32* @SEG6_LOCAL_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

29:                                               ; preds = %5
  %30 = load i32, i32* @SEG6_LOCAL_MAX, align 4
  %31 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %32 = load i32, i32* @seg6_local_policy, align 4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %34 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %30, %struct.nlattr* %31, i32 %32, %struct.netlink_ext_ack* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

39:                                               ; preds = %29
  %40 = load i64, i64* @SEG6_LOCAL_ACTION, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

47:                                               ; preds = %39
  %48 = call %struct.lwtunnel_state* @lwtunnel_state_alloc(i32 16)
  store %struct.lwtunnel_state* %48, %struct.lwtunnel_state** %14, align 8
  %49 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %50 = icmp ne %struct.lwtunnel_state* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

54:                                               ; preds = %47
  %55 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %56 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %55)
  store %struct.seg6_local_lwt* %56, %struct.seg6_local_lwt** %15, align 8
  %57 = load i64, i64* @SEG6_LOCAL_ACTION, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_u32(%struct.nlattr* %59)
  %61 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %15, align 8
  %62 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %15, align 8
  %64 = call i32 @parse_nla_action(%struct.nlattr** %22, %struct.seg6_local_lwt* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %82

68:                                               ; preds = %54
  %69 = load i32, i32* @LWTUNNEL_ENCAP_SEG6_LOCAL, align 4
  %70 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %71 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @LWTUNNEL_STATE_INPUT_REDIRECT, align 4
  %73 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %74 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %15, align 8
  %76 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %79 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %81 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* %80, %struct.lwtunnel_state** %81, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

82:                                               ; preds = %67
  %83 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %15, align 8
  %84 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %83, i32 0, i32 0
  %85 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %84, align 8
  %86 = call i32 @kfree(%struct.lwtunnel_state* %85)
  %87 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %14, align 8
  %88 = call i32 @kfree(%struct.lwtunnel_state* %87)
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %90

90:                                               ; preds = %82, %68, %51, %44, %37, %26
  %91 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.lwtunnel_state* @lwtunnel_state_alloc(i32) #2

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @parse_nla_action(%struct.nlattr**, %struct.seg6_local_lwt*) #2

declare dso_local i32 @kfree(%struct.lwtunnel_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
