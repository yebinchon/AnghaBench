; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nf_conn = type { i32 }

@CTA_EXPECT_TUPLE = common dso_local global i32 0, align 4
@CTA_EXPECT_MASK = common dso_local global i32 0, align 4
@CTA_EXPECT_MASTER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CTA_EXPECT_HELP_NAME = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nf_conntrack_zone*, %struct.nlattr**, i32, i32, i32)* @ctnetlink_create_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_create_expect(%struct.net* %0, %struct.nf_conntrack_zone* %1, %struct.nlattr** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_zone*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nf_conntrack_tuple, align 4
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  %16 = alloca %struct.nf_conntrack_tuple, align 4
  %17 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %18 = alloca %struct.nf_conntrack_helper*, align 8
  %19 = alloca %struct.nf_conntrack_expect*, align 8
  %20 = alloca %struct.nf_conn*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %9, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %17, align 8
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %18, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %24 = load i32, i32* @CTA_EXPECT_TUPLE, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %23, %struct.nf_conntrack_tuple* %14, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %21, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %21, align 4
  store i32 %30, i32* %7, align 4
  br label %109

31:                                               ; preds = %6
  %32 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %33 = load i32, i32* @CTA_EXPECT_MASK, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %32, %struct.nf_conntrack_tuple* %15, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %21, align 4
  store i32 %39, i32* %7, align 4
  br label %109

40:                                               ; preds = %31
  %41 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %42 = load i32, i32* @CTA_EXPECT_MASTER, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %41, %struct.nf_conntrack_tuple* %16, i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %7, align 4
  br label %109

49:                                               ; preds = %40
  %50 = load %struct.net*, %struct.net** %8, align 8
  %51 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %52 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %50, %struct.nf_conntrack_zone* %51, %struct.nf_conntrack_tuple* %16)
  store %struct.nf_conntrack_tuple_hash* %52, %struct.nf_conntrack_tuple_hash** %17, align 8
  %53 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %17, align 8
  %54 = icmp ne %struct.nf_conntrack_tuple_hash* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %109

58:                                               ; preds = %49
  %59 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %17, align 8
  %60 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %59)
  store %struct.nf_conn* %60, %struct.nf_conn** %20, align 8
  %61 = call i32 (...) @rcu_read_lock()
  %62 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %63 = load i64, i64* @CTA_EXPECT_HELP_NAME, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %58
  %68 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %69 = load i64, i64* @CTA_EXPECT_HELP_NAME, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i8* @nla_data(%struct.nlattr* %71)
  store i8* %72, i8** %22, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.nf_conn*, %struct.nf_conn** %20, align 8
  %76 = call i32 @nf_ct_protonum(%struct.nf_conn* %75)
  %77 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8* %73, i32 %74, i32 %76)
  store %struct.nf_conntrack_helper* %77, %struct.nf_conntrack_helper** %18, align 8
  %78 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %18, align 8
  %79 = icmp eq %struct.nf_conntrack_helper* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %21, align 4
  br label %105

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %58
  %86 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %87 = load %struct.nf_conn*, %struct.nf_conn** %20, align 8
  %88 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %18, align 8
  %89 = call %struct.nf_conntrack_expect* @ctnetlink_alloc_expect(%struct.nlattr** %86, %struct.nf_conn* %87, %struct.nf_conntrack_helper* %88, %struct.nf_conntrack_tuple* %14, %struct.nf_conntrack_tuple* %15)
  store %struct.nf_conntrack_expect* %89, %struct.nf_conntrack_expect** %19, align 8
  %90 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %91 = call i64 @IS_ERR(%struct.nf_conntrack_expect* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %95 = call i32 @PTR_ERR(%struct.nf_conntrack_expect* %94)
  store i32 %95, i32* %21, align 4
  br label %103

96:                                               ; preds = %85
  %97 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @nf_ct_expect_related_report(%struct.nf_conntrack_expect* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %21, align 4
  %101 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %19, align 8
  %102 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %101)
  br label %103

103:                                              ; preds = %96, %93
  %104 = call i32 (...) @rcu_read_unlock()
  br label %105

105:                                              ; preds = %103, %80
  %106 = load %struct.nf_conn*, %struct.nf_conn** %20, align 8
  %107 = call i32 @nf_ct_put(%struct.nf_conn* %106)
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %55, %47, %38, %29
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i32, i32, i32*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8*, i32, i32) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_conntrack_expect* @ctnetlink_alloc_expect(%struct.nlattr**, %struct.nf_conn*, %struct.nf_conntrack_helper*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local i64 @IS_ERR(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @PTR_ERR(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_related_report(%struct.nf_conntrack_expect*, i32, i32, i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
