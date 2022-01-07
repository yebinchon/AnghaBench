; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_negotiate_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_negotiate_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.x25_facilities = type { i32, i32, i64, i64, i64, i64 }
%struct.x25_dte_facilities = type { i32, i32, i64, i64, i64, i64 }
%struct.x25_sock = type { i32, %struct.x25_facilities }

@.str = private unnamed_addr constant [42 x i8] c"X.25: rejecting reverse charging request\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"X.25: inbound throughput negotiated\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"X.25: outbound throughput negotiated\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"X.25: packet size inwards negotiated down\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"X.25: packet size outwards negotiated down\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"X.25: window size inwards negotiated down\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"X.25: window size outwards negotiated down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_negotiate_facilities(%struct.sk_buff* %0, %struct.sock* %1, %struct.x25_facilities* %2, %struct.x25_dte_facilities* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.x25_facilities*, align 8
  %9 = alloca %struct.x25_dte_facilities*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca %struct.x25_facilities*, align 8
  %12 = alloca %struct.x25_facilities, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.x25_facilities* %2, %struct.x25_facilities** %8, align 8
  store %struct.x25_dte_facilities* %3, %struct.x25_dte_facilities** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call %struct.x25_sock* @x25_sk(%struct.sock* %18)
  store %struct.x25_sock* %19, %struct.x25_sock** %10, align 8
  %20 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %21 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %20, i32 0, i32 1
  store %struct.x25_facilities* %21, %struct.x25_facilities** %11, align 8
  %22 = call i32 @memset(%struct.x25_facilities* %12, i32 0, i32 40)
  %23 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %24 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %25 = call i32 @memcpy(%struct.x25_facilities* %23, %struct.x25_facilities* %24, i32 40)
  %26 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %9, align 8
  %27 = bitcast %struct.x25_dte_facilities* %26 to %struct.x25_facilities*
  %28 = call i32 @memset(%struct.x25_facilities* %27, i32 0, i32 40)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %9, align 8
  %31 = bitcast %struct.x25_dte_facilities* %30 to %struct.x25_facilities*
  %32 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %33 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %32, i32 0, i32 0
  %34 = call i32 @x25_parse_facilities(%struct.sk_buff* %29, %struct.x25_facilities* %12, %struct.x25_facilities* %31, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %188

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %46 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = call i32 @SOCK_DEBUG(%struct.sock* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %188

53:                                               ; preds = %44, %39
  %54 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %57 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %14, align 4
  %65 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 240
  store i32 %67, i32* %15, align 4
  %68 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %69 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %16, align 4
  %72 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %73 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 240
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78, %61
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = call i32 @SOCK_DEBUG(%struct.sock* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %86 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 240
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %92 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %82, %78
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96, %93
  %101 = load %struct.sock*, %struct.sock** %7, align 8
  %102 = call i32 @SOCK_DEBUG(%struct.sock* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %104 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 15
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %110 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %100, %96
  br label %112

112:                                              ; preds = %111, %53
  %113 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %124 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.sock*, %struct.sock** %7, align 8
  %129 = call i32 @SOCK_DEBUG(%struct.sock* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %133 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %120
  %135 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %138 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.sock*, %struct.sock** %7, align 8
  %143 = call i32 @SOCK_DEBUG(%struct.sock* %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %144 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %147 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %134
  br label %149

149:                                              ; preds = %148, %116, %112
  %150 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %161 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load %struct.sock*, %struct.sock** %7, align 8
  %166 = call i32 @SOCK_DEBUG(%struct.sock* %165, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %170 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %164, %157
  %172 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.x25_facilities*, %struct.x25_facilities** %11, align 8
  %175 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.sock*, %struct.sock** %7, align 8
  %180 = call i32 @SOCK_DEBUG(%struct.sock* %179, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %181 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %12, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.x25_facilities*, %struct.x25_facilities** %8, align 8
  %184 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %178, %171
  br label %186

186:                                              ; preds = %185, %153, %149
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %50, %37
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.x25_facilities*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.x25_facilities*, %struct.x25_facilities*, i32) #1

declare dso_local i32 @x25_parse_facilities(%struct.sk_buff*, %struct.x25_facilities*, %struct.x25_facilities*, i32*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
