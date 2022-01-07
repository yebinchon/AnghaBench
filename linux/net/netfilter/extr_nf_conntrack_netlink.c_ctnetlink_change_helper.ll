; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_helper = type { i8*, i32 (%struct.nlattr*, %struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque
%struct.nf_conn_help = type { %struct.nf_conntrack_helper* }

@CTA_HELP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_helper(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nf_conntrack_helper*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %11 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %12 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %11)
  store %struct.nf_conn_help* %12, %struct.nf_conn_help** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.nlattr* null, %struct.nlattr** %9, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @CTA_HELP, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call i32 @ctnetlink_parse_help(%struct.nlattr* %16, i8** %8, %struct.nlattr** %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %119

22:                                               ; preds = %2
  %23 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %31 = icmp ne %struct.nf_conn_help* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %35 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %34, i32 0, i32 0
  %36 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %35, align 8
  %37 = call %struct.nf_conntrack_helper* @rcu_dereference(%struct.nf_conntrack_helper* %36)
  store %struct.nf_conntrack_helper* %37, %struct.nf_conntrack_helper** %6, align 8
  %38 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %39 = icmp ne %struct.nf_conntrack_helper* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %42 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %40, %32
  %49 = call i32 (...) @rcu_read_unlock()
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %119

52:                                               ; preds = %22
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %58 = icmp ne %struct.nf_conn_help* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %61 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %60, i32 0, i32 0
  %62 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %61, align 8
  %63 = icmp ne %struct.nf_conntrack_helper* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %66 = call i32 @nf_ct_remove_expectations(%struct.nf_conn* %65)
  %67 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %68 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %67, i32 0, i32 0
  %69 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %68, align 8
  %70 = call i32 @RCU_INIT_POINTER(%struct.nf_conntrack_helper* %69, i32* null)
  br label %71

71:                                               ; preds = %64, %59, %56
  store i32 0, i32* %3, align 4
  br label %119

72:                                               ; preds = %52
  %73 = call i32 (...) @rcu_read_lock()
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %76 = call i32 @nf_ct_l3num(%struct.nf_conn* %75)
  %77 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %78 = call i32 @nf_ct_protonum(%struct.nf_conn* %77)
  %79 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8* %74, i32 %76, i32 %78)
  store %struct.nf_conntrack_helper* %79, %struct.nf_conntrack_helper** %6, align 8
  %80 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %81 = icmp eq %struct.nf_conntrack_helper* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %72
  %87 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %88 = icmp ne %struct.nf_conn_help* %87, null
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %91 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %90, i32 0, i32 0
  %92 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %91, align 8
  %93 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %94 = icmp eq %struct.nf_conntrack_helper* %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %97 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %96, i32 0, i32 1
  %98 = load i32 (%struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.nlattr*, %struct.nf_conn.0*)** %97, align 8
  %99 = icmp ne i32 (%struct.nlattr*, %struct.nf_conn.0*)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %102 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %101, i32 0, i32 1
  %103 = load i32 (%struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.nlattr*, %struct.nf_conn.0*)** %102, align 8
  %104 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %105 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %106 = bitcast %struct.nf_conn* %105 to %struct.nf_conn.0*
  %107 = call i32 %103(%struct.nlattr* %104, %struct.nf_conn.0* %106)
  br label %108

108:                                              ; preds = %100, %95
  store i32 0, i32* %10, align 4
  br label %112

109:                                              ; preds = %89
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %109, %108
  br label %116

113:                                              ; preds = %86
  %114 = load i32, i32* @EOPNOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %112
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %82, %71, %50, %20
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @ctnetlink_parse_help(%struct.nlattr*, i8**, %struct.nlattr**) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(%struct.nf_conntrack_helper*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nf_ct_remove_expectations(%struct.nf_conn*) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.nf_conntrack_helper*, i32*) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
