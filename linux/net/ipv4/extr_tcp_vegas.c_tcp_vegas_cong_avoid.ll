; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_vegas.c_tcp_vegas_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_vegas.c_tcp_vegas_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i8*, i32 }
%struct.vegas = type { i32, i32, i32, i32, i32 }

@gamma = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@alpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_vegas_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_vegas_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.vegas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.vegas* @inet_csk_ca(%struct.sock* %14)
  store %struct.vegas* %15, %struct.vegas** %8, align 8
  %16 = load %struct.vegas*, %struct.vegas** %8, align 8
  %17 = getelementptr inbounds %struct.vegas, %struct.vegas* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @tcp_reno_cong_avoid(%struct.sock* %21, i32 %22, i32 %23)
  br label %170

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vegas*, %struct.vegas** %8, align 8
  %28 = getelementptr inbounds %struct.vegas, %struct.vegas* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @after(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %161

32:                                               ; preds = %25
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vegas*, %struct.vegas** %8, align 8
  %37 = getelementptr inbounds %struct.vegas, %struct.vegas* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vegas*, %struct.vegas** %8, align 8
  %39 = getelementptr inbounds %struct.vegas, %struct.vegas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @tcp_reno_cong_avoid(%struct.sock* %43, i32 %44, i32 %45)
  br label %156

47:                                               ; preds = %32
  %48 = load %struct.vegas*, %struct.vegas** %8, align 8
  %49 = getelementptr inbounds %struct.vegas, %struct.vegas* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vegas*, %struct.vegas** %8, align 8
  %55 = getelementptr inbounds %struct.vegas, %struct.vegas* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @do_div(i32 %58, i32 %59)
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.vegas*, %struct.vegas** %8, align 8
  %66 = getelementptr inbounds %struct.vegas, %struct.vegas* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = mul nsw i32 %63, %68
  %70 = load %struct.vegas*, %struct.vegas** %8, align 8
  %71 = getelementptr inbounds %struct.vegas, %struct.vegas* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @gamma, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %47
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %79 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @min(i32 %84, i32 %86)
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %91 = call i8* @tcp_vegas_ssthresh(%struct.tcp_sock* %90)
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %128

94:                                               ; preds = %77, %47
  %95 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %96 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @tcp_slow_start(%struct.tcp_sock* %99, i32 %100)
  br label %127

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @beta, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %112 = call i8* @tcp_vegas_ssthresh(%struct.tcp_sock* %111)
  %113 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %114 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  br label %126

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @alpha, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %119
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %98
  br label %128

128:                                              ; preds = %127, %81
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 0
  store i32 2, i32* %135, align 8
  br label %151

136:                                              ; preds = %128
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %146 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %149 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %144, %136
  br label %151

151:                                              ; preds = %150, %133
  %152 = load %struct.sock*, %struct.sock** %4, align 8
  %153 = call i8* @tcp_current_ssthresh(%struct.sock* %152)
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %151, %42
  %157 = load %struct.vegas*, %struct.vegas** %8, align 8
  %158 = getelementptr inbounds %struct.vegas, %struct.vegas* %157, i32 0, i32 0
  store i32 0, i32* %158, align 4
  %159 = load %struct.vegas*, %struct.vegas** %8, align 8
  %160 = getelementptr inbounds %struct.vegas, %struct.vegas* %159, i32 0, i32 1
  store i32 2147483647, i32* %160, align 4
  br label %170

161:                                              ; preds = %25
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %163 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @tcp_slow_start(%struct.tcp_sock* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %161
  br label %170

170:                                              ; preds = %20, %169, %156
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.vegas* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_reno_cong_avoid(%struct.sock*, i32, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @tcp_vegas_ssthresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i8* @tcp_current_ssthresh(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
