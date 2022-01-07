; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_action_param = type { i32 (%struct.nlattr.0**, %struct.seg6_local_lwt*)* }
%struct.nlattr.0 = type opaque
%struct.seg6_local_lwt = type { i32, %struct.seg6_action_desc*, i32 }
%struct.seg6_action_desc = type { i32, i64, i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SEG6_LOCAL_MAX = common dso_local global i32 0, align 4
@seg6_action_params = common dso_local global %struct.seg6_action_param* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.seg6_local_lwt*)* @parse_nla_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nla_action(%struct.nlattr** %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.seg6_action_param*, align 8
  %7 = alloca %struct.seg6_action_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %10 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %11 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.seg6_action_desc* @__get_action_desc(i32 %12)
  store %struct.seg6_action_desc* %13, %struct.seg6_action_desc** %7, align 8
  %14 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %7, align 8
  %15 = icmp ne %struct.seg6_action_desc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %7, align 8
  %21 = getelementptr inbounds %struct.seg6_action_desc, %struct.seg6_action_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %19
  %28 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %7, align 8
  %29 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %30 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %29, i32 0, i32 1
  store %struct.seg6_action_desc* %28, %struct.seg6_action_desc** %30, align 8
  %31 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %7, align 8
  %32 = getelementptr inbounds %struct.seg6_action_desc, %struct.seg6_action_desc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %35 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %81, %27
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SEG6_LOCAL_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  %46 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %7, align 8
  %47 = getelementptr inbounds %struct.seg6_action_desc, %struct.seg6_action_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %45
  %54 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %53
  %64 = load %struct.seg6_action_param*, %struct.seg6_action_param** @seg6_action_params, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %64, i64 %66
  store %struct.seg6_action_param* %67, %struct.seg6_action_param** %6, align 8
  %68 = load %struct.seg6_action_param*, %struct.seg6_action_param** %6, align 8
  %69 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %68, i32 0, i32 0
  %70 = load i32 (%struct.nlattr.0**, %struct.seg6_local_lwt*)*, i32 (%struct.nlattr.0**, %struct.seg6_local_lwt*)** %69, align 8
  %71 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %72 = bitcast %struct.nlattr** %71 to %struct.nlattr.0**
  %73 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %74 = call i32 %70(%struct.nlattr.0** %72, %struct.seg6_local_lwt* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %45
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %40

84:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %77, %60, %24, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.seg6_action_desc* @__get_action_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
