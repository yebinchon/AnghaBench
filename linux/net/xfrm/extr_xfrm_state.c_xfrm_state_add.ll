; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_add(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %11 = call %struct.net* @xs_net(%struct.xfrm_state* %10)
  store %struct.net* %11, %struct.net** %3, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %26 = call i32 @xfrm_id_proto_match(i64 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  %31 = load %struct.net*, %struct.net** %3, align 8
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state* %35, i32 %36, i32 %37)
  store %struct.xfrm_state* %38, %struct.xfrm_state** %4, align 8
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %40 = icmp ne %struct.xfrm_state* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %42, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  %43 = load i32, i32* @EEXIST, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %125

45:                                               ; preds = %1
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load %struct.net*, %struct.net** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.xfrm_state* @__xfrm_find_acq_byseq(%struct.net* %55, i32 %56, i64 %60)
  store %struct.xfrm_state* %61, %struct.xfrm_state** %4, align 8
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %63 = icmp ne %struct.xfrm_state* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %54
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %64
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @xfrm_addr_equal(i32* %77, i32* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74, %64
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %85, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %86

86:                                               ; preds = %84, %74, %54
  br label %87

87:                                               ; preds = %86, %48, %45
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %92 = icmp ne %struct.xfrm_state* %91, null
  br i1 %92, label %120, label %93

93:                                               ; preds = %90
  %94 = load %struct.net*, %struct.net** %3, align 8
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 3
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %99 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call %struct.xfrm_state* @__find_acq_core(%struct.net* %94, %struct.TYPE_10__* %96, i32 %97, i32 %101, i32 %105, i32 %108, i64 %112, i32* %115, i32* %118, i32 0)
  store %struct.xfrm_state* %119, %struct.xfrm_state** %4, align 8
  br label %120

120:                                              ; preds = %93, %90, %87
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %122 = call i32 @__xfrm_state_bump_genids(%struct.xfrm_state* %121)
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %124 = call i32 @__xfrm_state_insert(%struct.xfrm_state* %123)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %41
  %126 = load %struct.net*, %struct.net** %3, align 8
  %127 = getelementptr inbounds %struct.net, %struct.net* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %131 = icmp ne %struct.xfrm_state* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %134 = call i32 @xfrm_state_delete(%struct.xfrm_state* %133)
  %135 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %136 = call i32 @xfrm_state_put(%struct.xfrm_state* %135)
  br label %137

137:                                              ; preds = %132, %125
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %139 = icmp ne %struct.xfrm_state* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %142 = call i32 @xfrm_state_put(%struct.xfrm_state* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_id_proto_match(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state*, i32, i32) #1

declare dso_local %struct.xfrm_state* @__xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i32 @xfrm_addr_equal(i32*, i32*, i32) #1

declare dso_local %struct.xfrm_state* @__find_acq_core(%struct.net*, %struct.TYPE_10__*, i32, i32, i32, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @__xfrm_state_bump_genids(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
