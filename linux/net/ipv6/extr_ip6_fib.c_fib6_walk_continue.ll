; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_walk_continue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_walk_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_walker = type { i32, {}*, %struct.fib6_node*, i8*, %struct.fib6_node*, i32, i32 }
%struct.fib6_node = type { i32, i32, i32, i32, i32 }

@RTN_TL_ROOT = common dso_local global i32 0, align 4
@FWS_INIT = common dso_local global i8* null, align 8
@RTN_RTINFO = common dso_local global i32 0, align 4
@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_walker*)* @fib6_walk_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_walk_continue(%struct.fib6_walker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib6_walker*, align 8
  %4 = alloca %struct.fib6_node*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca %struct.fib6_node*, align 8
  %8 = alloca i32, align 4
  store %struct.fib6_walker* %0, %struct.fib6_walker** %3, align 8
  %9 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %10 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %9, i32 0, i32 4
  %11 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %12 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RTN_TL_ROOT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  br label %20

20:                                               ; preds = %165, %153, %146, %108, %58, %39, %1
  %21 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %22 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %21, i32 0, i32 2
  %23 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  store %struct.fib6_node* %23, %struct.fib6_node** %4, align 8
  %24 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %25 = icmp ne %struct.fib6_node* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %166

27:                                               ; preds = %20
  %28 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %29 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %165 [
    i32 131, label %31
    i32 130, label %50
    i32 132, label %75
    i32 128, label %117
  ]

31:                                               ; preds = %27
  %32 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %33 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @rcu_dereference_protected(i32 %34, i32 1)
  %36 = bitcast i8* %35 to %struct.fib6_node*
  store %struct.fib6_node* %36, %struct.fib6_node** %6, align 8
  %37 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %38 = icmp ne %struct.fib6_node* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %41 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %42 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %41, i32 0, i32 2
  store %struct.fib6_node* %40, %struct.fib6_node** %42, align 8
  %43 = load i8*, i8** @FWS_INIT, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %46 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %20

47:                                               ; preds = %31
  %48 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %49 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %48, i32 0, i32 0
  store i32 130, i32* %49, align 8
  br label %50

50:                                               ; preds = %27, %47
  %51 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %52 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @rcu_dereference_protected(i32 %53, i32 1)
  %55 = bitcast i8* %54 to %struct.fib6_node*
  store %struct.fib6_node* %55, %struct.fib6_node** %7, align 8
  %56 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %57 = icmp ne %struct.fib6_node* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %60 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %61 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %60, i32 0, i32 2
  store %struct.fib6_node* %59, %struct.fib6_node** %61, align 8
  %62 = load i8*, i8** @FWS_INIT, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %65 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %20

66:                                               ; preds = %50
  %67 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %68 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %67, i32 0, i32 0
  store i32 132, i32* %68, align 8
  %69 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %70 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @rcu_dereference_protected(i32 %71, i32 1)
  %73 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %74 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %27, %66
  %76 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %77 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %82 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RTN_RTINFO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %80
  %88 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %89 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %94 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %114

97:                                               ; preds = %87
  %98 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %99 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %98, i32 0, i32 1
  %100 = bitcast {}** %99 to i32 (%struct.fib6_walker*)**
  %101 = load i32 (%struct.fib6_walker*)*, i32 (%struct.fib6_walker*)** %100, align 8
  %102 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %103 = call i32 %101(%struct.fib6_walker* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %166

108:                                              ; preds = %97
  %109 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %110 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %20

113:                                              ; preds = %80, %75
  br label %114

114:                                              ; preds = %113, %92
  %115 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %116 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %115, i32 0, i32 0
  store i32 128, i32* %116, align 8
  br label %117

117:                                              ; preds = %27, %114
  %118 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %119 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %120 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %119, i32 0, i32 4
  %121 = load %struct.fib6_node*, %struct.fib6_node** %120, align 8
  %122 = icmp eq %struct.fib6_node* %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %166

124:                                              ; preds = %117
  %125 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %126 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @rcu_dereference_protected(i32 %127, i32 1)
  %129 = bitcast i8* %128 to %struct.fib6_node*
  store %struct.fib6_node* %129, %struct.fib6_node** %5, align 8
  %130 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %131 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @rcu_dereference_protected(i32 %132, i32 1)
  %134 = bitcast i8* %133 to %struct.fib6_node*
  store %struct.fib6_node* %134, %struct.fib6_node** %6, align 8
  %135 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %136 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @rcu_dereference_protected(i32 %137, i32 1)
  %139 = bitcast i8* %138 to %struct.fib6_node*
  store %struct.fib6_node* %139, %struct.fib6_node** %7, align 8
  %140 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %141 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %142 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %141, i32 0, i32 2
  store %struct.fib6_node* %140, %struct.fib6_node** %142, align 8
  %143 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  %144 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %145 = icmp eq %struct.fib6_node* %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %124
  %147 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %148 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %147, i32 0, i32 0
  store i32 130, i32* %148, align 8
  br label %20

149:                                              ; preds = %124
  %150 = load %struct.fib6_node*, %struct.fib6_node** %7, align 8
  %151 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %152 = icmp eq %struct.fib6_node* %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %155 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %154, i32 0, i32 0
  store i32 132, i32* %155, align 8
  %156 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %157 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %156, i32 0, i32 2
  %158 = load %struct.fib6_node*, %struct.fib6_node** %157, align 8
  %159 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @rcu_dereference_protected(i32 %160, i32 1)
  %162 = load %struct.fib6_walker*, %struct.fib6_walker** %3, align 8
  %163 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  br label %20

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %27
  br label %20

166:                                              ; preds = %123, %106, %26
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
