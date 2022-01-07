; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unknown LWT encapsulation type\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@lwtun_encaps = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"LWT encapsulation type not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_build_state(i64 %0, %struct.nlattr* %1, i32 %2, i8* %3, %struct.lwtunnel_state** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lwtunnel_state**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.lwtunnel_encap_ops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store %struct.nlattr* %1, %struct.nlattr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.lwtunnel_state** %4, %struct.lwtunnel_state*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %16, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %6
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %29 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %27, %struct.nlattr* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %7, align 4
  br label %87

31:                                               ; preds = %22
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %16, align 4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load i32*, i32** @lwtun_encaps, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %38)
  store %struct.lwtunnel_encap_ops* %39, %struct.lwtunnel_encap_ops** %14, align 8
  %40 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %14, align 8
  %41 = icmp ne %struct.lwtunnel_encap_ops* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %14, align 8
  %44 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)*, i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)** %44, align 8
  %46 = icmp ne i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %14, align 8
  %49 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @try_module_get(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %42, %31
  %54 = phi i1 [ false, %42 ], [ false, %31 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %14, align 8
  %65 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)*, i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)** %65, align 8
  %67 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %12, align 8
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %72 = call i32 %66(%struct.nlattr* %67, i32 %68, i8* %69, %struct.lwtunnel_state** %70, %struct.netlink_ext_ack* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %14, align 8
  %77 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @module_put(i32 %78)
  br label %80

80:                                               ; preds = %75, %63
  br label %85

81:                                               ; preds = %59
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %84 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %82, %struct.nlattr* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %26
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lwtunnel_encap_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
