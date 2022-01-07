; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_nl_parse_link_prop.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_nl_parse_link_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TIPC_NLA_PROP_MAX = common dso_local global i32 0, align 4
@tipc_nl_prop_policy = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_PRIO = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_PRI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i64 0, align 8
@TIPC_MIN_LINK_TOL = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_TOL = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_WIN = common dso_local global i64 0, align 8
@TIPC_MIN_LINK_WIN = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_parse_link_prop(%struct.nlattr* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i32, i32* @TIPC_NLA_PROP_MAX, align 4
  %12 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %13 = load i32, i32* @tipc_nl_prop_policy, align 4
  %14 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %10, i32 %11, %struct.nlattr* %12, i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %27 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i64 @nla_get_u32(%struct.nlattr* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @TIPC_MAX_LINK_PRI, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %40 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i64 @nla_get_u32(%struct.nlattr* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @TIPC_MIN_LINK_TOL, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @TIPC_MAX_LINK_TOL, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %85

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %63 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %69 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i64 @nla_get_u32(%struct.nlattr* %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @TIPC_MIN_LINK_WIN, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @TIPC_MAX_LINK_WIN, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %67
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %61
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %80, %57, %34, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
