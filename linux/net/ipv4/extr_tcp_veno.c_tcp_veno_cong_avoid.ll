; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_veno.c_tcp_veno_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_veno.c_tcp_veno_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.veno = type { i32, i32, i32, i32, i32, i32 }

@V_PARAM_SHIFT = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_veno_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_veno_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.veno*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.veno* @inet_csk_ca(%struct.sock* %13)
  store %struct.veno* %14, %struct.veno** %8, align 8
  %15 = load %struct.veno*, %struct.veno** %8, align 8
  %16 = getelementptr inbounds %struct.veno, %struct.veno* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tcp_reno_cong_avoid(%struct.sock* %20, i32 %21, i32 %22)
  br label %152

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @tcp_is_cwnd_limited(%struct.sock* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %152

29:                                               ; preds = %24
  %30 = load %struct.veno*, %struct.veno** %8, align 8
  %31 = getelementptr inbounds %struct.veno, %struct.veno* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @tcp_reno_cong_avoid(%struct.sock* %35, i32 %36, i32 %37)
  br label %149

39:                                               ; preds = %29
  %40 = load %struct.veno*, %struct.veno** %8, align 8
  %41 = getelementptr inbounds %struct.veno, %struct.veno* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.veno*, %struct.veno** %8, align 8
  %47 = getelementptr inbounds %struct.veno, %struct.veno* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @V_PARAM_SHIFT, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @do_div(i32 %53, i32 %54)
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @V_PARAM_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load %struct.veno*, %struct.veno** %8, align 8
  %64 = getelementptr inbounds %struct.veno, %struct.veno* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %66 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %39
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @tcp_slow_start(%struct.tcp_sock* %69, i32 %70)
  br label %125

72:                                               ; preds = %39
  %73 = load %struct.veno*, %struct.veno** %8, align 8
  %74 = getelementptr inbounds %struct.veno, %struct.veno* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @beta, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %79, i32 %82, i32 1)
  br label %124

84:                                               ; preds = %72
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %84
  %93 = load %struct.veno*, %struct.veno** %8, align 8
  %94 = getelementptr inbounds %struct.veno, %struct.veno* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.veno*, %struct.veno** %8, align 8
  %111 = getelementptr inbounds %struct.veno, %struct.veno* %110, i32 0, i32 4
  store i32 0, i32* %111, align 4
  br label %115

112:                                              ; preds = %97, %92
  %113 = load %struct.veno*, %struct.veno** %8, align 8
  %114 = getelementptr inbounds %struct.veno, %struct.veno* %113, i32 0, i32 4
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %117 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  br label %123

118:                                              ; preds = %84
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123, %78
  br label %125

125:                                              ; preds = %124, %68
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %132 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %131, i32 0, i32 0
  store i32 2, i32* %132, align 4
  br label %148

133:                                              ; preds = %125
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %146 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %133
  br label %148

148:                                              ; preds = %147, %130
  br label %149

149:                                              ; preds = %148, %34
  %150 = load %struct.veno*, %struct.veno** %8, align 8
  %151 = getelementptr inbounds %struct.veno, %struct.veno* %150, i32 0, i32 1
  store i32 2147483647, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %28, %19
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.veno* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_reno_cong_avoid(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
