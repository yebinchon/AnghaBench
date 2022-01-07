; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rtt_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rtt_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @tcp_rtt_estimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rtt_estimator(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %131

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %16
  %30 = load i64, i64* %6, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = ashr i64 %42, 3
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %41, %29
  br label %53

45:                                               ; preds = %16
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %53
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %68
  br label %88

88:                                               ; preds = %87, %53
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @after(i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %88
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = ashr i32 %112, 2
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %115 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %105, %97
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %123 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.sock*, %struct.sock** %3, align 8
  %125 = call i32 @tcp_rto_min_us(%struct.sock* %124)
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sock*, %struct.sock** %3, align 8
  %129 = call i32 @tcp_bpf_rtt(%struct.sock* %128)
  br label %130

130:                                              ; preds = %118, %88
  br label %161

131:                                              ; preds = %2
  %132 = load i64, i64* %6, align 8
  %133 = shl i64 %132, 3
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load i64, i64* %6, align 8
  %136 = shl i64 %135, 1
  %137 = trunc i64 %136 to i32
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sock*, %struct.sock** %3, align 8
  %144 = call i32 @tcp_rto_min_us(%struct.sock* %143)
  %145 = call i8* @max(i32 %142, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %148 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %153 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.sock*, %struct.sock** %3, align 8
  %160 = call i32 @tcp_bpf_rtt(%struct.sock* %159)
  br label %161

161:                                              ; preds = %131, %130
  %162 = load i32, i32* %7, align 4
  %163 = call i8* @max(i32 1, i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %166 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_rto_min_us(%struct.sock*) #1

declare dso_local i32 @tcp_bpf_rtt(%struct.sock*) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
