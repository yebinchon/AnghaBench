; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_select.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.fib6_info* }
%struct.fib6_info = type { i64, i32, i32, i32, %struct.TYPE_7__*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fib6_node = type { i32, i32, i32 }
%struct.fib6_result = type { %struct.fib6_info*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_node*, i32, %struct.fib6_result*, i32)* @rt6_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_select(%struct.net* %0, %struct.fib6_node* %1, i32 %2, %struct.fib6_result* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib6_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib6_info*, align 8
  %12 = alloca %struct.fib6_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fib6_info*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fib6_result* %3, %struct.fib6_result** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %17 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.fib6_info* @rcu_dereference(i32 %18)
  store %struct.fib6_info* %19, %struct.fib6_info** %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %21 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %20, i32 0, i32 0
  store %struct.fib6_info* null, %struct.fib6_info** %21, align 8
  %22 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %23 = icmp ne %struct.fib6_info* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.fib6_info*, %struct.fib6_info** %28, align 8
  %30 = icmp eq %struct.fib6_info* %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %5
  br label %107

32:                                               ; preds = %24
  %33 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %34 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.fib6_info* @rcu_dereference(i32 %35)
  store %struct.fib6_info* %36, %struct.fib6_info** %12, align 8
  %37 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %38 = icmp ne %struct.fib6_info* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  store %struct.fib6_info* %40, %struct.fib6_info** %12, align 8
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %43 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %14, align 4
  %46 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %47 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %107

52:                                               ; preds = %41
  %53 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %54 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %55 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %59 = call i32 @find_rr_leaf(%struct.fib6_node* %53, %struct.fib6_info* %54, %struct.fib6_info* %55, i32 %56, i32 %57, i32* %13, %struct.fib6_result* %58)
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %52
  %63 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %64 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.fib6_info* @rcu_dereference(i32 %65)
  store %struct.fib6_info* %66, %struct.fib6_info** %15, align 8
  %67 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  %68 = icmp ne %struct.fib6_info* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  %71 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %74 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69, %62
  %78 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  store %struct.fib6_info* %78, %struct.fib6_info** %15, align 8
  br label %79

79:                                               ; preds = %77, %69
  %80 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  %81 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %82 = icmp ne %struct.fib6_info* %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %85 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_bh(i32* %87)
  %89 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  %90 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %95 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  %98 = call i32 @rcu_assign_pointer(i32 %96, %struct.fib6_info* %97)
  br label %99

99:                                               ; preds = %93, %83
  %100 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %101 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %100, i32 0, i32 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock_bh(i32* %103)
  br label %105

105:                                              ; preds = %99, %79
  br label %106

106:                                              ; preds = %105, %52
  br label %107

107:                                              ; preds = %106, %51, %31
  %108 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %109 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %108, i32 0, i32 0
  %110 = load %struct.fib6_info*, %struct.fib6_info** %109, align 8
  %111 = icmp ne %struct.fib6_info* %110, null
  br i1 %111, label %140, label %112

112:                                              ; preds = %107
  %113 = load %struct.net*, %struct.net** %6, align 8
  %114 = getelementptr inbounds %struct.net, %struct.net* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.fib6_info*, %struct.fib6_info** %115, align 8
  %117 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %118 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %117, i32 0, i32 0
  store %struct.fib6_info* %116, %struct.fib6_info** %118, align 8
  %119 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %120 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %119, i32 0, i32 0
  %121 = load %struct.fib6_info*, %struct.fib6_info** %120, align 8
  %122 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %125 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %127 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %126, i32 0, i32 0
  %128 = load %struct.fib6_info*, %struct.fib6_info** %127, align 8
  %129 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %132 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %134 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %133, i32 0, i32 0
  %135 = load %struct.fib6_info*, %struct.fib6_info** %134, align 8
  %136 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %139 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %112, %107
  ret void
}

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i32 @find_rr_leaf(%struct.fib6_node*, %struct.fib6_info*, %struct.fib6_info*, i32, i32, i32*, %struct.fib6_result*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fib6_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
