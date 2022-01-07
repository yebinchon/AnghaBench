; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c___nf_ct_try_assign_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c___nf_ct_try_assign_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conntrack_helper = type { i64 }
%struct.nf_conn_help = type { %struct.nf_conntrack_helper* }
%struct.net = type { i32 }

@IPS_HELPER_BIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %0, %struct.nf_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_helper*, align 8
  %9 = alloca %struct.nf_conn_help*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %8, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %13 = call %struct.net* @nf_ct_net(%struct.nf_conn* %12)
  store %struct.net* %13, %struct.net** %10, align 8
  %14 = load i32, i32* @IPS_HELPER_BIT, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %22 = icmp ne %struct.nf_conn* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %25 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %24)
  store %struct.nf_conn_help* %25, %struct.nf_conn_help** %9, align 8
  %26 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %27 = icmp ne %struct.nf_conn_help* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %30 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %29, i32 0, i32 0
  %31 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %30, align 8
  store %struct.nf_conntrack_helper* %31, %struct.nf_conntrack_helper** %8, align 8
  %32 = load i32, i32* @IPS_HELPER_BIT, align 4
  %33 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %34 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %39 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %38)
  store %struct.nf_conn_help* %39, %struct.nf_conn_help** %9, align 8
  %40 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %41 = icmp eq %struct.nf_conntrack_helper* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %44 = load %struct.net*, %struct.net** %10, align 8
  %45 = call %struct.nf_conntrack_helper* @nf_ct_lookup_helper(%struct.nf_conn* %43, %struct.net* %44)
  store %struct.nf_conntrack_helper* %45, %struct.nf_conntrack_helper** %8, align 8
  %46 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %47 = icmp eq %struct.nf_conntrack_helper* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %50 = icmp ne %struct.nf_conn_help* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %53 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %52, i32 0, i32 0
  %54 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %53, align 8
  %55 = call i32 @RCU_INIT_POINTER(%struct.nf_conntrack_helper* %54, i32* null)
  br label %56

56:                                               ; preds = %51, %48
  store i32 0, i32* %4, align 4
  br label %98

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %60 = icmp eq %struct.nf_conn_help* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %62, i32 %63)
  store %struct.nf_conn_help* %64, %struct.nf_conn_help** %9, align 8
  %65 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %66 = icmp eq %struct.nf_conn_help* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %98

70:                                               ; preds = %61
  br label %92

71:                                               ; preds = %58
  %72 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %73 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %72, i32 0, i32 0
  %74 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %73, align 8
  %75 = call %struct.nf_conntrack_helper* @rcu_dereference(%struct.nf_conntrack_helper* %74)
  store %struct.nf_conntrack_helper* %75, %struct.nf_conntrack_helper** %11, align 8
  %76 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %77 = icmp ne %struct.nf_conntrack_helper* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %80 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %83 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %88 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %87, i32 0, i32 0
  %89 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %88, align 8
  %90 = call i32 @RCU_INIT_POINTER(%struct.nf_conntrack_helper* %89, i32* null)
  store i32 0, i32* %4, align 4
  br label %98

91:                                               ; preds = %78, %71
  br label %92

92:                                               ; preds = %91, %70
  %93 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %94 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %93, i32 0, i32 0
  %95 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %94, align 8
  %96 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %97 = call i32 @rcu_assign_pointer(%struct.nf_conntrack_helper* %95, %struct.nf_conntrack_helper* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %86, %67, %56, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.nf_conntrack_helper* @nf_ct_lookup_helper(%struct.nf_conn*, %struct.net*) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.nf_conntrack_helper*, i32*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(%struct.nf_conntrack_helper*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_conntrack_helper*, %struct.nf_conntrack_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
