; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_update_nametbl.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_tipc_update_nametbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.distr_item = type { i32, i32, i32, i32, i32 }
%struct.publication = type { i32 }

@PUBLICATION = common dso_local global i64 0, align 8
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@WITHDRAWAL = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to remove binding %u,%u from %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unrecognized name table message received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.distr_item*, i64, i64)* @tipc_update_nametbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_update_nametbl(%struct.net* %0, %struct.distr_item* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.distr_item*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.publication*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.distr_item* %1, %struct.distr_item** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.publication* null, %struct.publication** %10, align 8
  %16 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %17 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ntohl(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %21 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ntohl(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %25 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntohl(i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %29 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohl(i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load %struct.distr_item*, %struct.distr_item** %7, align 8
  %33 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohl(i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PUBLICATION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %4
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call %struct.publication* @tipc_nametbl_insert_publ(%struct.net* %40, i64 %41, i64 %42, i64 %43, i32 %44, i64 %45, i64 %46, i64 %47)
  store %struct.publication* %48, %struct.publication** %10, align 8
  %49 = load %struct.publication*, %struct.publication** %10, align 8
  %50 = icmp ne %struct.publication* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.net*, %struct.net** %6, align 8
  %53 = load %struct.publication*, %struct.publication** %10, align 8
  %54 = getelementptr inbounds %struct.publication, %struct.publication* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @tipc_node_subscribe(%struct.net* %52, i32* %54, i64 %55)
  store i32 1, i32* %5, align 4
  br label %90

57:                                               ; preds = %39
  br label %89

58:                                               ; preds = %4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @WITHDRAWAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.net*, %struct.net** %6, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call %struct.publication* @tipc_nametbl_remove_publ(%struct.net* %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  store %struct.publication* %69, %struct.publication** %10, align 8
  %70 = load %struct.publication*, %struct.publication** %10, align 8
  %71 = icmp ne %struct.publication* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.net*, %struct.net** %6, align 8
  %74 = load %struct.publication*, %struct.publication** %10, align 8
  %75 = getelementptr inbounds %struct.publication, %struct.publication* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @tipc_node_unsubscribe(%struct.net* %73, i32* %75, i64 %76)
  %78 = load %struct.publication*, %struct.publication** %10, align 8
  %79 = load i32, i32* @rcu, align 4
  %80 = call i32 @kfree_rcu(%struct.publication* %78, i32 %79)
  store i32 1, i32* %5, align 4
  br label %90

81:                                               ; preds = %62
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %83, i64 %84)
  br label %88

86:                                               ; preds = %58
  %87 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %57
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %72, %51
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.publication* @tipc_nametbl_insert_publ(%struct.net*, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i32 @tipc_node_subscribe(%struct.net*, i32*, i64) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(%struct.net*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @tipc_node_unsubscribe(%struct.net*, i32*, i64) #1

declare dso_local i32 @kfree_rcu(%struct.publication*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i64, i64, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
