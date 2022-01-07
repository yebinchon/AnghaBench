; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_locate_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_locate_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, i32, i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_info = type { i32 }
%struct.rt6key = type { i32 }

@RTN_RTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.fib6_node*, %struct.in6_addr*, i32, i32, i32)* @fib6_locate_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_locate_1(%struct.fib6_node* %0, %struct.in6_addr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib6_node*, align 8
  %13 = alloca %struct.fib6_node*, align 8
  %14 = alloca %struct.fib6_info*, align 8
  %15 = alloca %struct.rt6key*, align 8
  store %struct.fib6_node* %0, %struct.fib6_node** %7, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fib6_node* null, %struct.fib6_node** %13, align 8
  %16 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  store %struct.fib6_node* %16, %struct.fib6_node** %12, align 8
  br label %17

17:                                               ; preds = %95, %5
  %18 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %19 = icmp ne %struct.fib6_node* %18, null
  br i1 %19, label %20, label %96

20:                                               ; preds = %17
  %21 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %22 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @rcu_dereference(i32 %23)
  %25 = bitcast i8* %24 to %struct.fib6_info*
  store %struct.fib6_info* %25, %struct.fib6_info** %14, align 8
  %26 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %27 = icmp ne %struct.fib6_info* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %31 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %97

35:                                               ; preds = %28
  br label %76

36:                                               ; preds = %20
  %37 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %38 = bitcast %struct.fib6_info* %37 to i32*
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = bitcast i32* %41 to %struct.rt6key*
  store %struct.rt6key* %42, %struct.rt6key** %15, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %45 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %36
  %49 = load %struct.rt6key*, %struct.rt6key** %15, align 8
  %50 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %49, i32 0, i32 0
  %51 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %52 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %53 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ipv6_prefix_equal(i32* %50, %struct.in6_addr* %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48, %36
  br label %97

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %61 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  store %struct.fib6_node* %65, %struct.fib6_node** %6, align 8
  br label %103

66:                                               ; preds = %58
  %67 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %68 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RTN_RTINFO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  store %struct.fib6_node* %74, %struct.fib6_node** %13, align 8
  br label %75

75:                                               ; preds = %73, %66
  br label %76

76:                                               ; preds = %75, %35
  %77 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %78 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %79 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @addr_bit_set(%struct.in6_addr* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %85 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @rcu_dereference(i32 %86)
  %88 = bitcast i8* %87 to %struct.fib6_node*
  store %struct.fib6_node* %88, %struct.fib6_node** %12, align 8
  br label %95

89:                                               ; preds = %76
  %90 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %91 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @rcu_dereference(i32 %92)
  %94 = bitcast i8* %93 to %struct.fib6_node*
  store %struct.fib6_node* %94, %struct.fib6_node** %12, align 8
  br label %95

95:                                               ; preds = %89, %83
  br label %17

96:                                               ; preds = %17
  br label %97

97:                                               ; preds = %96, %57, %34
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store %struct.fib6_node* null, %struct.fib6_node** %6, align 8
  br label %103

101:                                              ; preds = %97
  %102 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  store %struct.fib6_node* %102, %struct.fib6_node** %6, align 8
  br label %103

103:                                              ; preds = %101, %100, %64
  %104 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  ret %struct.fib6_node* %104
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @ipv6_prefix_equal(i32*, %struct.in6_addr*, i32) #1

declare dso_local i64 @addr_bit_set(%struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
