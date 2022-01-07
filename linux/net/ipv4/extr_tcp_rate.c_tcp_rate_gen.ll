; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_gen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32, i32, i32, i64, i32, i8*, i8*, i32, i8*, i8* }
%struct.tcp_sock = type { i32, i32, i32, i64, %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tcp rate: %ld %d %u %u %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rate_gen(%struct.sock* %0, i8* %1, i8* %2, i32 %3, %struct.rate_sample* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rate_sample*, align 8
  %11 = alloca %struct.tcp_sock*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rate_sample* %4, %struct.rate_sample** %10, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %11, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @after(i32 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %20, %5
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %44 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %47 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %49 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %41
  %56 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %57 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %59 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  br label %165

60:                                               ; preds = %52
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %65 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %69 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %71 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %12, align 8
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %79 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @tcp_stamp_us_delta(i32 %77, i32 %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @max(i8* %82, i8* %83)
  %85 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %86 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %89 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %92 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %94 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %97 = call i32 @tcp_min_rtt(%struct.tcp_sock* %96)
  %98 = icmp slt i32 %95, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %60
  %103 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %104 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %102
  %108 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %109 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %112 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sock*, %struct.sock** %6, align 8
  %115 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %119 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %123 = call i32 @tcp_min_rtt(%struct.tcp_sock* %122)
  %124 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %117, i32 %121, i32 %123)
  br label %125

125:                                              ; preds = %107, %102
  %126 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %127 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %126, i32 0, i32 1
  store i32 -1, i32* %127, align 4
  br label %165

128:                                              ; preds = %60
  %129 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %130 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %128
  %134 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %135 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %142 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %145 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = icmp sge i32 %140, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %133, %128
  %150 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %151 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %154 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %156 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %159 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %161 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %164 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %55, %125, %149, %133
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @after(i32, i64) #1

declare dso_local i8* @tcp_stamp_us_delta(i32, i32) #1

declare dso_local i32 @max(i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_min_rtt(%struct.tcp_sock*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
