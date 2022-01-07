; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_ptr_or_null_reg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_ptr_or_null_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { i32 }
%struct.bpf_reg_state = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, %struct.TYPE_2__* }

@SCALAR_VALUE = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE_OR_NULL = common dso_local global i64 0, align 8
@CONST_PTR_TO_MAP = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_XSKMAP = common dso_local global i64 0, align 8
@PTR_TO_XDP_SOCK = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@PTR_TO_SOCKET_OR_NULL = common dso_local global i64 0, align 8
@PTR_TO_SOCKET = common dso_local global i64 0, align 8
@PTR_TO_SOCK_COMMON_OR_NULL = common dso_local global i64 0, align 8
@PTR_TO_SOCK_COMMON = common dso_local global i64 0, align 8
@PTR_TO_TCP_SOCK_OR_NULL = common dso_local global i64 0, align 8
@PTR_TO_TCP_SOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_func_state*, %struct.bpf_reg_state*, i64, i32)* @mark_ptr_or_null_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ptr_or_null_reg(%struct.bpf_func_state* %0, %struct.bpf_reg_state* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_func_state*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_func_state* %0, %struct.bpf_func_state** %5, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %10 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @reg_type_may_be_null(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %151

14:                                               ; preds = %4
  %15 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %151

20:                                               ; preds = %14
  %21 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tnum_equals_const(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %30, %25, %20
  %42 = phi i1 [ true, %30 ], [ true, %25 ], [ true, %20 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %48 = call i32 @__mark_reg_known_zero(%struct.bpf_reg_state* %47)
  %49 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @SCALAR_VALUE, align 8
  %56 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %57 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %134

58:                                               ; preds = %51
  %59 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PTR_TO_MAP_VALUE_OR_NULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %58
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %66 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i64, i64* @CONST_PTR_TO_MAP, align 8
  %73 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %74 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %76 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %81 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %80, i32 0, i32 3
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %81, align 8
  br label %99

82:                                               ; preds = %64
  %83 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %84 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BPF_MAP_TYPE_XSKMAP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i64, i64* @PTR_TO_XDP_SOCK, align 8
  %92 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %93 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %96 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %97 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %71
  br label %133

100:                                              ; preds = %58
  %101 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %102 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PTR_TO_SOCKET_OR_NULL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* @PTR_TO_SOCKET, align 8
  %108 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %109 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %132

110:                                              ; preds = %100
  %111 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %112 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PTR_TO_SOCK_COMMON_OR_NULL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i64, i64* @PTR_TO_SOCK_COMMON, align 8
  %118 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %119 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %131

120:                                              ; preds = %110
  %121 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %122 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PTR_TO_TCP_SOCK_OR_NULL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i64, i64* @PTR_TO_TCP_SOCK, align 8
  %128 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %129 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %116
  br label %132

132:                                              ; preds = %131, %106
  br label %133

133:                                              ; preds = %132, %99
  br label %134

134:                                              ; preds = %133, %54
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %139 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %141 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  br label %150

142:                                              ; preds = %134
  %143 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %144 = call i32 @reg_may_point_to_spin_lock(%struct.bpf_reg_state* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %148 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %142
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %14, %4
  ret void
}

declare dso_local i64 @reg_type_may_be_null(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tnum_equals_const(i32, i32) #1

declare dso_local i32 @__mark_reg_known_zero(%struct.bpf_reg_state*) #1

declare dso_local i32 @reg_may_point_to_spin_lock(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
