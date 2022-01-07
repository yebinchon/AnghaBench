; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_node_lookup_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_node_lookup_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, i32, i32, i32, i32, i32 }
%struct.lookup_args = type { i64, i32 }
%struct.fib6_info = type { i32 }
%struct.rt6key = type { i32, i32 }

@RTN_RTINFO = common dso_local global i32 0, align 4
@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.fib6_node*, %struct.lookup_args*)* @fib6_node_lookup_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_node_lookup_1(%struct.fib6_node* %0, %struct.lookup_args* %1) #0 {
  %3 = alloca %struct.fib6_node*, align 8
  %4 = alloca %struct.fib6_node*, align 8
  %5 = alloca %struct.lookup_args*, align 8
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fib6_node*, align 8
  %9 = alloca %struct.fib6_node*, align 8
  %10 = alloca %struct.fib6_info*, align 8
  %11 = alloca %struct.rt6key*, align 8
  store %struct.fib6_node* %0, %struct.fib6_node** %4, align 8
  store %struct.lookup_args* %1, %struct.lookup_args** %5, align 8
  %12 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %13 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.fib6_node* null, %struct.fib6_node** %3, align 8
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  store %struct.fib6_node* %21, %struct.fib6_node** %6, align 8
  br label %22

22:                                               ; preds = %47, %20
  %23 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %24 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %27 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @addr_bit_set(i32 %25, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %34 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rcu_dereference(i32 %35)
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %39 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @rcu_dereference(i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i8* [ %36, %32 ], [ %41, %37 ]
  %44 = bitcast i8* %43 to %struct.fib6_node*
  store %struct.fib6_node* %44, %struct.fib6_node** %8, align 8
  %45 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  %46 = icmp ne %struct.fib6_node* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  store %struct.fib6_node* %48, %struct.fib6_node** %6, align 8
  br label %22

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %113, %50
  %52 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %53 = icmp ne %struct.fib6_node* %52, null
  br i1 %53, label %54, label %119

54:                                               ; preds = %51
  %55 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %56 = call %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node* %55)
  store %struct.fib6_node* %56, %struct.fib6_node** %9, align 8
  %57 = load %struct.fib6_node*, %struct.fib6_node** %9, align 8
  %58 = icmp ne %struct.fib6_node* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %61 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RTN_RTINFO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %59, %54
  %67 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %68 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @rcu_dereference(i32 %69)
  %71 = bitcast i8* %70 to %struct.fib6_info*
  store %struct.fib6_info* %71, %struct.fib6_info** %10, align 8
  %72 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %73 = icmp ne %struct.fib6_info* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %105

75:                                               ; preds = %66
  %76 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %77 = bitcast %struct.fib6_info* %76 to i32*
  %78 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %79 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = bitcast i32* %81 to %struct.rt6key*
  store %struct.rt6key* %82, %struct.rt6key** %11, align 8
  %83 = load %struct.rt6key*, %struct.rt6key** %11, align 8
  %84 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %83, i32 0, i32 1
  %85 = load %struct.lookup_args*, %struct.lookup_args** %5, align 8
  %86 = getelementptr inbounds %struct.lookup_args, %struct.lookup_args* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rt6key*, %struct.rt6key** %11, align 8
  %89 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ipv6_prefix_equal(i32* %84, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %75
  %94 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %95 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RTN_RTINFO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  store %struct.fib6_node* %101, %struct.fib6_node** %3, align 8
  br label %120

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %59
  br label %105

105:                                              ; preds = %104, %74
  %106 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %107 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RTN_ROOT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %119

113:                                              ; preds = %105
  %114 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %115 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @rcu_dereference(i32 %116)
  %118 = bitcast i8* %117 to %struct.fib6_node*
  store %struct.fib6_node* %118, %struct.fib6_node** %6, align 8
  br label %51

119:                                              ; preds = %112, %51
  store %struct.fib6_node* null, %struct.fib6_node** %3, align 8
  br label %120

120:                                              ; preds = %119, %100, %19
  %121 = load %struct.fib6_node*, %struct.fib6_node** %3, align 8
  ret %struct.fib6_node* %121
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @addr_bit_set(i32, i32) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.fib6_node* @FIB6_SUBTREE(%struct.fib6_node*) #1

declare dso_local i64 @ipv6_prefix_equal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
