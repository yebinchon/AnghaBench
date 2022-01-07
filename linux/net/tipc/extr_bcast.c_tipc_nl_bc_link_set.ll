; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_nl_bc_link_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_nl_bc_link_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_PROP_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_PROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_BROADCAST = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_BROADCAST_RATIO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_bc_link_set(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %13 = load i32, i32* @TIPC_NLA_PROP_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @TIPC_NLA_LINK_PROP, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @TIPC_NLA_LINK_PROP, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @tipc_nl_parse_link_prop(%struct.nlattr* %30, %struct.nlattr** %17)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

36:                                               ; preds = %26
  %37 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @TIPC_NLA_PROP_BROADCAST, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @TIPC_NLA_PROP_BROADCAST_RATIO, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

54:                                               ; preds = %46, %41, %36
  %55 = load i64, i64* @TIPC_NLA_PROP_BROADCAST, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i64, i64* @TIPC_NLA_PROP_BROADCAST, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_get_u32(%struct.nlattr* %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.net*, %struct.net** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @tipc_bc_link_set_broadcast_mode(%struct.net* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* @TIPC_NLA_PROP_BROADCAST_RATIO, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i64, i64* @TIPC_NLA_PROP_BROADCAST_RATIO, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @nla_get_u32(%struct.nlattr* %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.net*, %struct.net** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @tipc_bc_link_set_broadcast_ratio(%struct.net* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %75, %70, %67
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_get_u32(%struct.nlattr* %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.net*, %struct.net** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @tipc_bc_link_set_queue_limits(%struct.net* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %91, %86, %83
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %99, %51, %34, %23
  %102 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tipc_nl_parse_link_prop(%struct.nlattr*, %struct.nlattr**) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_bc_link_set_broadcast_mode(%struct.net*, i32) #2

declare dso_local i32 @tipc_bc_link_set_broadcast_ratio(%struct.net*, i32) #2

declare dso_local i32 @tipc_bc_link_set_queue_limits(%struct.net*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
